# Root Cause Analysis

## Identify the Process

The process named `kworker` is not a legitimate Linux kernel worker.

A real Linux `kworker` process is a kernel thread. It normally appears in brackets, such as `[kworker]`, and does not run from a web directory. In this case, the process is suspicious because it runs as the `www-data` user and is located in `/var/www/html/.cache/kworker`.

The command line also shows a connection to:

```text
stratum+tcp://pool.monero.org:4443
```

`Stratum` is a protocol commonly used by cryptocurrency miners to communicate with mining pools. The reference to `pool.monero.org` indicates that this process is being used for Monero cryptocurrency mining.

The purpose of this process is therefore to use the CPU resources of `billing-srv-01` to mine cryptocurrency for an external attacker. The high CPU usage is not caused by the normal billing workload. It is caused by a malicious crypto-miner disguised as a legitimate system process.

## Classify the Real Compromise

The visible symptom is performance degradation, which affects Availability. However, Availability is not the root security issue. The server was already compromised before the CPU saturation became visible.

The two primary CIA violations are Confidentiality and Integrity.

### Confidentiality

Confidentiality is impacted because an unauthorized actor gained access to a sensitive billing server.

`billing-srv-01` supports billing and claims processing, which may involve financial data and patient-related information. Even if the diagnostic file does not prove data exfiltration, unauthorized access to this server environment is already a confidentiality concern.

### Integrity

Integrity is impacted because the attacker modified the system by placing and executing unauthorized files.

The malicious binary `kworker` and its `config.json` file were created under `/var/www/html/.cache/`. This means the state of the server was changed without authorization. The server is no longer in a trusted state because it is running attacker-controlled code.

### Availability

Availability is the visible operational impact.

The crypto-miner consumes a very high amount of CPU, which causes recurring performance degradation for the billing application. This explains why the finance team experiences slow service and why restarting the server only temporarily improves the situation.

## Explain Why the Sysadmin's Solution Fails

The sysadmin's recommendation is to migrate the server to a more powerful VM with more CPU and RAM. This would not fix the real problem.

The issue is not that `billing-srv-01` is undersized. The issue is that the server is compromised.

Adding more CPU and memory might reduce the visible performance problem for a short time, but it would not remove the malicious process, identify the initial access point, or prevent reinfection. In practice, a larger server could simply give the crypto-miner more resources to abuse.

The correct response should include investigation, containment, malware removal or rebuild from a trusted source, patching, log review, and identification of the original entry point. The Apache service and billing web application should also be reviewed because the malicious process runs as `www-data`, which suggests that the attacker may have gained access through the web application or Apache.

## Connect to the January Incident

The January ransomware incident and the current crypto-miner both affected `billing-srv-01`.

This suggests that the server may have a persistent security weakness that was not corrected during the rebuild after the ransomware incident. The payload is different this time, but the entry point may be the same.

The ransomware encrypted the billing server in January. Now, a crypto-miner is running on the rebuilt server. This pattern suggests that the team may have treated the symptoms of the January incident without identifying and fixing the root cause.

The key question should be:

```text
What initial access path allowed both incidents to compromise billing-srv-01?
```

Additional questions should include:

* Was the Apache service or billing application vulnerable?
* Was the same vulnerable version redeployed after the rebuild?
* Were patches applied after the ransomware incident?
* Were web logs, authentication logs and cron jobs reviewed?
* Was the server rebuilt from a trusted image?
* Were credentials rotated after the ransomware incident?
* Are outbound connections to mining pools or suspicious IP addresses being monitored or blocked?

## Conclusion

`billing-srv-01` is not only experiencing a performance issue. It is compromised.

The CPU saturation is a symptom caused by a malicious crypto-miner. The real problem is unauthorized access and unauthorized modification of a sensitive billing server.

Upgrading the hardware would not resolve the security issue. MedDefense needs to investigate how the attacker gained access, remove the compromise, patch the vulnerable entry point, and verify that the server is rebuilt and hardened correctly before returning it to normal operation.
