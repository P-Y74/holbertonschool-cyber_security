# Access Persistence Techniques

## Disclaimer

This project was completed for educational purposes only as part of the Holberton School cybersecurity curriculum.

All techniques were tested in a dedicated Windows virtual machine provided for the project.  
The objective is to understand how persistence mechanisms work on Windows systems from a defensive and analytical perspective.

No technique described in this repository should be used on systems without explicit authorization.

## Project Overview

Initial access to a system is often temporary. A reboot, a user logoff, or a terminated process can be enough to remove an attacker’s access. Persistence techniques are used to maintain access over time by abusing legitimate operating system features.

This project focuses on Windows persistence mechanisms, including techniques such as:

- Startup folder persistence
- Registry-based persistence
- Scheduled tasks
- DLL hijacking concepts
- WMI event subscriptions
- BITS jobs

The goal is to understand how these techniques work, how they can be identified, and why they represent a security risk in real-world environments.

## Environment

The exercises were performed in a controlled Windows virtual machine.

The project follows the structure required by Holberton School:

```text
holbertonschool-cyber_security/
└── persistence_in_windows/
    └── 0x00_acces_persistence_techniques/
```

## Learning Objectives

By completing this project, I practiced how to:

* Explain what Windows persistence is and why it matters in cybersecurity.
* Identify common persistence locations on Windows systems.
* Analyze suspicious files configured to run automatically.
* Use PowerShell to inspect files and validate findings.
* Document persistence mechanisms clearly and safely.
* Approach persistence techniques from a defensive and incident-response mindset.

---

# Task 0 - Persistence Using Startup Folder

## Objective

The goal of this task was to investigate how attackers can use the Windows Startup folder to maintain persistence.

Programs or scripts placed in specific Startup folders can automatically execute when a user logs in. This makes the Startup folder a simple but effective persistence mechanism.

The task required checking both user-specific and global Startup folders to identify suspicious files that may indicate persistence.

## Technique Overview

Windows provides Startup folders that are automatically processed during user logon.

Common locations include:

```text
User-specific Startup folder:
C:\Users\<username>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

```text
Global Startup folder:
C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
```

Files placed in these folders can be executed automatically when the corresponding user session starts.

From a security perspective, these folders are important locations to monitor because they may contain:

* Batch scripts
* Shortcuts
* Executables
* PowerShell scripts
* Other files configured for automatic execution

## Investigation Steps

I started by navigating to the user-specific Startup folder for the `SuperAdministrator` account:

```text
C:\Users\SuperAdministrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

Inside this directory, I identified a suspicious batch file:

```text
vmtoolsd.bat
```

The filename looks similar to a legitimate VMware Tools process name, which could make it appear less suspicious at first glance.

I opened the file with Notepad to inspect its content.

## File Analysis

The batch file was designed to write a flag file to the desktop flag directory:

```bat
@echo off

# The written flag is wrong, the purpose of this task is to understand it was created.
# Change the value of the first flag with the MD5 hash of this file itself used along with this method to validate the first challenge.

echo "flag01" > "C:\Users\SuperAdministrator\Desktop\flags\flag01.txt"
```

The comments inside the script indicate that the visible written flag is not the expected final answer.
Instead, the task requires calculating the MD5 hash of the batch file itself.

This confirms that the persistence mechanism was based on placing a script inside the Startup folder.

## Hash Calculation

Although the script created a `flag01.txt` file containing `"flag01"`, the comments inside the batch file indicated that this written value was intentionally incorrect.

The purpose of the generated flag file was to confirm that the Startup folder persistence mechanism had executed successfully. To validate the task correctly, I had to calculate the MD5 hash of the persistence script itself.

I used PowerShell to calculate the MD5 hash of the suspicious batch file:

```powershell
Get-FileHash -Algorithm MD5 -Path "C:\Users\SuperAdministrator\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\vmtoolsd.bat"
```

The command returned the MD5 hash of `vmtoolsd.bat`, which was then used as the expected value for the required flag file.

## Result

The persistence file was successfully located and analyzed.

The identified persistence mechanism was:

```text
Startup Folder Persistence
```

The suspicious file was:

```text
vmtoolsd.bat
```

The validation was completed by generating the MD5 hash of the Startup folder persistence script and saving the expected value in:

```text
0-flag.txt
```

## Security Takeaways

This task demonstrates that the Startup folder is a simple but effective persistence location on Windows systems.

From a defensive perspective, these folders should be monitored because attackers may use them to automatically execute scripts or binaries after user logon.

Important detection and mitigation points include:

* Regularly inspect user and global Startup folders.
* Monitor new files created in Startup directories.
* Investigate scripts or shortcuts with misleading names.
* Use tools such as Autoruns to review persistence locations.
* Restrict unnecessary write permissions where possible.
* Correlate Startup folder modifications with suspicious user activity.

## MITRE ATT&CK Mapping

| Tactic      | Technique                                        | ID        |
| ----------- | ------------------------------------------------ | --------- |
| Persistence | Boot or Logon Autostart Execution: Startup Items | T1547.001 |

---

# Task 1 - Persistence Using Registry Autorun

## Objective

The goal of this task was to investigate how attackers can use Windows Registry autorun keys to maintain persistence.

Registry Run keys allow programs or scripts to execute automatically when a user logs in. This makes them a common persistence mechanism used by both legitimate software and malware.

The task required identifying a suspicious autorun registry entry, analyzing the script it executed, extracting the hidden flag, and cleaning up the persistence entry afterward.

## Technique Overview

Windows Registry Run keys are commonly used to launch applications during user logon.

Common autorun locations include:

```text
Current user autorun key:
HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
```

```text
Local machine autorun key:
HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
```

A value stored under one of these keys can point to an executable, script, or command line that will be executed automatically at logon.

From a security perspective, these keys are important to monitor because attackers may use them to persist across reboots and user sessions.

## Investigation Steps

I used Sysinternals Autoruns to inspect logon-related persistence entries.

In the `Logon` tab, I identified a suspicious autorun entry named:

```text
flag2
```

The entry was located under the following registry path:

```text
HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
```

Autoruns showed that the registry value launched PowerShell with an execution policy bypass:

```text
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ep bypass -File "C:\Program Files (x86)\WindowsPowerShell\Modules\PackageManagement\1.0.0.1\UserProfile.ps1"
```

This indicated that the persistence mechanism was based on a Registry Run key executing a PowerShell script at user logon.

## Registry Entry Analysis

The suspicious autorun value was:

```text
Value name:
flag2
```

The associated command executed:

```text
powershell.exe -ep bypass -File "C:\Program Files (x86)\WindowsPowerShell\Modules\PackageManagement\1.0.0.1\UserProfile.ps1"
```

The use of `-ep bypass` was notable because it allows the script to run while bypassing the current PowerShell execution policy for that process.

I opened the referenced script for analysis:

```text
C:\Program Files (x86)\WindowsPowerShell\Modules\PackageManagement\1.0.0.1\UserProfile.ps1
```

## Script Analysis

The PowerShell script contained a command writing a placeholder value to a flag file:

```powershell
Set-Content -Path "C:\Users\SuperAdministrator\Desktop\flags\flag02.txt" -Value "Holberton{xxx}"
```

However, the interesting part of the script was an array of hexadecimal values followed by an ASCII decoding instruction:

```powershell
$a = 0x48,0x6f,0x6c,0x62,0x65,0x72,0x74,0x6f,0x6e, ...
[System.Text.Encoding]::ASCII.GetString($a) | Write-Output
```

Instead of relying on the placeholder value written to `flag02.txt`, I decoded the hexadecimal array using PowerShell.

This revealed the actual hidden flag, which was then saved in the required file:

```text
1-flag.txt
```

## Execution Policy Observation

When attempting to run the script manually, PowerShell returned an execution policy error:

```text
running scripts is disabled on this system
```

This happened because the script was executed directly without the same bypass option used by the autorun entry.

The registry value used the following option:

```text
-ep bypass
```

This confirmed that the persistence entry was intentionally configured to execute the script despite local PowerShell execution policy restrictions.

## Cleanup

After extracting the flag and validating the task, I removed the suspicious autorun value from the registry.

I used the following registry location:

```text
HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
```

Only the suspicious value was removed:

```text
flag2
```

The full `Run` key was not deleted, because it may contain legitimate autorun entries.

After refreshing Autoruns, the `flag2` persistence entry no longer appeared, confirming that the registry-based persistence mechanism had been removed.

## Result

The persistence mechanism was successfully identified, analyzed, and cleaned up.

The identified persistence mechanism was:

```text
Registry Run Key Persistence
```

The suspicious registry location was:

```text
HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
```

The suspicious value was:

```text
flag2
```

The script executed by the registry value was:

```text
C:\Program Files (x86)\WindowsPowerShell\Modules\PackageManagement\1.0.0.1\UserProfile.ps1
```

The hidden flag was extracted by decoding the hexadecimal ASCII array inside the PowerShell script and saved in:

```text
1-flag.txt
```

## Security Takeaways

This task demonstrates how Registry Run keys can be abused to maintain persistence on Windows systems.

From a defensive perspective, autorun registry locations should be regularly reviewed because they are commonly used by malware to execute code when a user logs in.

Important detection and mitigation points include:

* Monitor changes to Registry Run keys.
* Review autorun entries with tools such as Autoruns.
* Investigate suspicious PowerShell command lines.
* Pay attention to execution policy bypass arguments such as `-ep bypass`.
* Validate scripts executed from unusual or misleading paths.
* Remove only suspicious registry values, not the entire registry key.
* Correlate autorun registry changes with suspicious file creation or user activity.

## MITRE ATT&CK Mapping

| Tactic      | Technique                                                             | ID        |
| ----------- | --------------------------------------------------------------------- | --------- |
| Persistence | Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder | T1547.001 |

---

# Task 2 - Persistence Using Services

## Objective

The goal of this task was to investigate how Windows Services can be abused as a persistence mechanism.

Windows Services can be configured to start automatically during system boot, allowing programs to run in the background without direct user interaction. This makes services a powerful persistence technique when misused by an attacker.

The task required identifying a suspicious service, analyzing its metadata, extracting a hidden Base64-encoded flag, and cleaning up the service afterward.

## Technique Overview

Windows Services are background processes managed by the Service Control Manager.

Legitimate services are commonly used by the operating system and installed applications. However, attackers can abuse this feature by creating or modifying services so that malicious programs execute automatically when the system starts.

Services can be inspected using tools such as:

```text
services.msc
```

```text
Task Manager > Services
```

```text
Sysinternals Autoruns > Services
```

From a security perspective, services should be monitored because they can provide persistent execution with elevated privileges depending on their configuration.

## Investigation Steps

I started by opening Task Manager and checking the `Services` tab.

From there, I opened the Windows Services management console:

```text
services.msc
```

While reviewing the list of services, I identified a suspicious service named:

```text
flag3
```

The service description contained a message indicating that access was still maintained on the system and that the flag was Base64-encoded.

I also confirmed the same service entry in Sysinternals Autoruns under the `Services` tab.

## Service Analysis

The suspicious service was identified as:

```text
flag3
```

Its description contained a Base64-encoded value.

This confirmed that the service itself was being used as part of the persistence exercise. Instead of hiding the flag in a script or executable, the relevant information was stored directly in the service metadata.

## Base64 Decoding

The service description indicated that the flag was Base64-encoded.

To decode it safely, a local PowerShell command can be used:

```powershell
[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("<base64_value>"))
```

After decoding the Base64 string, I extracted the expected flag and saved it in:

```text
2-flag.txt
```

## Cleanup

After extracting the flag and validating the task, I removed the suspicious service using Autoruns.

I refreshed Autoruns afterward to confirm that the `flag3` service entry no longer appeared.

This cleanup step was important to restore the system state and remove the persistence mechanism.

## Result

The persistence mechanism was successfully identified, analyzed, and removed.

The identified persistence mechanism was:

```text
Windows Service Persistence
```

The suspicious service was:

```text
flag3
```

The hidden flag was extracted by decoding the Base64 value found in the service description and saved in:

```text
2-flag.txt
```

The suspicious service was then removed from the system.

## Security Takeaways

This task demonstrates how Windows Services can be abused to maintain persistence on a system.

From a defensive perspective, services should be regularly reviewed because attackers may create services that run automatically during boot and remain hidden among legitimate system services.

Important detection and mitigation points include:

* Regularly inspect installed services.
* Review service names, descriptions, paths, and startup types.
* Investigate services with suspicious or unusual descriptions.
* Use Autoruns to identify non-standard service persistence.
* Monitor service creation events.
* Remove unauthorized services after investigation.
* Avoid decoding or submitting suspicious data to external websites when local tools can be used.

## MITRE ATT&CK Mapping

| Tactic      | Technique                                        | ID        |
| ----------- | ------------------------------------------------ | --------- |
| Persistence | Create or Modify System Process: Windows Service | T1543.003 |

---

# Task 3 - Persistence Using Scheduled Tasks

## Objective

The goal of this task was to investigate how Windows Scheduled Tasks can be abused as a persistence mechanism.

Scheduled tasks allow programs or scripts to run automatically based on specific triggers, such as system startup, user logon, time intervals, or system events. Attackers can abuse this legitimate Windows feature to execute malicious code persistently without direct user interaction.

The task required locating a scheduled task, inspecting its configuration, extracting the flag from its description, and removing the task afterward.

## Technique Overview

Windows Task Scheduler is a built-in automation feature used to run tasks based on defined triggers.

Common persistence-related triggers include:

```text
At system startup
````

```text
At user logon
```

```text
On a schedule
```

```text
On a specific event
```

From a security perspective, scheduled tasks are important to monitor because they can be used to execute scripts, binaries, or commands automatically and persist across reboots.

Scheduled tasks can be inspected using:

```text
Task Scheduler GUI
```

```powershell
Get-ScheduledTask
```

```powershell
Get-ScheduledTaskInfo
```

## Investigation Steps

I opened the Windows Task Scheduler and navigated to:

```text
Task Scheduler Library
```

Inside the library, I identified a suspicious scheduled task named:

```text
flag04
```

Although the task name was `flag04`, it was used for this project task and the extracted value was saved in the required file:

```text
3-flag.txt
```

The task was configured with the following trigger:

```text
At system startup
```

This confirmed that the task was designed to run automatically when the system starts, which is a common persistence technique.

## PowerShell Validation

To respect the task requirements and validate the finding with PowerShell, I inspected the scheduled task using the following command:

```powershell
Get-ScheduledTask -TaskName "flag04"
```

To retrieve the task description, where the flag was hidden, I used:

```powershell
(Get-ScheduledTask -TaskName "flag04").Description
```

The description contained the expected flag for the challenge.

I also checked the task triggers with:

```powershell
(Get-ScheduledTask -TaskName "flag04").Triggers
```

The output confirmed that the scheduled task was triggered at system startup.

To inspect the action configured for the task, I used:

```powershell
(Get-ScheduledTask -TaskName "flag04").Actions
```

This allowed me to review what the scheduled task was configured to execute.

Finally, I checked execution-related information with:

```powershell
Get-ScheduledTaskInfo -TaskName "flag04"
```

The task status showed that it was ready and that the last execution completed successfully.

## Cleanup

After extracting the flag and validating the persistence mechanism, I removed the suspicious scheduled task.

The task was deleted using PowerShell:

```powershell
Unregister-ScheduledTask -TaskName "flag04" -Confirm:$false
```

I then verified that the task no longer existed:

```powershell
Get-ScheduledTask | Where-Object {
    $_.TaskName -eq "flag04"
}
```

No result was returned, confirming that the scheduled task had been successfully removed.

## Result

The persistence mechanism was successfully identified, analyzed, and removed.

The identified persistence mechanism was:

```text
Scheduled Task Persistence
```

The suspicious scheduled task was:

```text
flag04
```

The trigger type was:

```text
At system startup
```

The flag was found in the scheduled task description and saved in:

```text
3-flag.txt
```

The scheduled task was then removed from the system.

## Security Takeaways

This task demonstrates how scheduled tasks can be abused to maintain persistence on Windows systems.

From a defensive perspective, scheduled tasks should be regularly reviewed because attackers may use them to execute code automatically during startup, logon, or other system events.

Important detection and mitigation points include:

* Review scheduled tasks regularly.
* Investigate tasks with unusual names, descriptions, actions, or authors.
* Monitor tasks triggered at system startup or user logon.
* Inspect task actions to identify suspicious scripts or binaries.
* Use PowerShell or Task Scheduler GUI to validate task configuration.
* Remove unauthorized scheduled tasks after investigation.
* Correlate scheduled task creation with suspicious user or process activity.

## MITRE ATT&CK Mapping

| Tactic      | Technique                          | ID        |
| ----------- | ---------------------------------- | --------- |
| Persistence | Scheduled Task/Job: Scheduled Task | T1053.005 |

---

# Task 4 - Persistence Using BITSAdmin

## Objective

The goal of this task was to study how the Background Intelligent Transfer Service (BITS) can be abused as a persistence mechanism on Windows systems.

BITS is a legitimate Windows service used to transfer files in the background. It is commonly used by Windows Update and other system components to download or upload data efficiently, even when network conditions are unstable.

From an attacker perspective, this feature can be abused to download a payload in the background and maintain access by recreating or retrying jobs under specific conditions.

For this task, the focus was educational. The payload concept was treated as a benign test payload used only to simulate attacker behavior in a controlled lab environment.

## Technique Overview

BITS jobs are managed by the Background Intelligent Transfer Service. They can be created, listed, resumed, completed, or removed using tools such as:

```text
bitsadmin
```

or PowerShell cmdlets related to BITS transfers.

A BITS job can be configured to download a file from a remote or local source and store it on the target system. Attackers may abuse this behavior because BITS:

* Is a legitimate Windows component.
* Runs in the background.
* Can survive temporary network interruptions.
* Can resume interrupted transfers.
* May appear less suspicious than custom download tools.
* Can be combined with other persistence mechanisms.

BITS alone is mainly a transfer mechanism. Persistence becomes more effective when BITS is combined with another mechanism, such as a scheduled task or a monitoring script that recreates the job if it is removed.

## Lab Scenario

In a controlled lab scenario, an attacker could abuse BITSAdmin to create a background download job that retrieves a payload.

For ethical and educational purposes, the payload should be harmless. A safe example would be a test script or text file that writes a marker file locally instead of performing any malicious action.

The intended workflow is:

```text
1. Enumerate existing BITS jobs.
2. Create a new BITS download job.
3. Configure the job to download a benign test payload.
4. Complete or trigger the job.
5. Use a checker script to monitor whether the job still exists.
6. Automate the checker with a scheduled task.
7. Review Windows logs for detection indicators.
8. Remove the BITS job and related persistence artifacts.
```

## BITS Job Enumeration

Before creating or analyzing a BITS job, existing jobs should be enumerated.

This can be done with:

```cmd
bitsadmin /list /allusers /verbose
```

This command helps identify existing BITS jobs and review useful information such as:

* Job name
* Owner
* State
* Remote URL
* Local destination path
* Error count
* Transfer status

From a defensive perspective, unusual BITS jobs should be investigated, especially if they download files from unknown locations or write to suspicious directories.

## Controlled BITS Persistence Concept

The persistence concept for this task is based on abusing a trusted Windows feature to retrieve a payload in the background.

A safe lab demonstration would use:

```text
Job type:
Download job
```

```text
Payload type:
Benign test payload
```

```text
Purpose:
Simulate how an attacker could stage a file using BITS
```

The BITS job itself is not necessarily enough to guarantee full persistence. However, it can be combined with a scheduled task or checker script that monitors the job and recreates it if removed.

This demonstrates how attackers may chain legitimate Windows features together to maintain access.

## Checker Script Concept

The task also required the concept of a checker script.

The purpose of the checker script is to verify whether the expected BITS job exists. If the job has been removed, the script could recreate it.

In a defensive learning context, this helps demonstrate how persistence can be layered:

```text
Scheduled Task
   ↓
PowerShell checker script
   ↓
BITS job verification
   ↓
BITS job recreation if missing
```

This combination makes the persistence more resilient because removing only the BITS job may not be enough if another mechanism recreates it.

## Detection and Analysis

BITS activity can be investigated using Windows Event Viewer.

Relevant logs include:

```text
Event Viewer
└── Applications and Services Logs
    └── Microsoft
        └── Windows
            └── Bits-Client
                └── Operational
```

Suspicious indicators may include:

* Unexpected BITS jobs.
* Jobs created by unusual users.
* Downloads from unknown or external locations.
* Files written to suspicious paths.
* Repeated job creation after deletion.
* BITS activity followed by script or binary execution.
* Correlation with scheduled task creation.

Additional tools such as Autoruns can also help identify related persistence mechanisms, especially if a scheduled task or startup entry is used to recreate the BITS job.

## Cleanup

After the analysis, the suspicious BITS job should be removed.

A BITS job can be deleted with:

```cmd
bitsadmin /cancel <job_name>
```

After removal, the job list should be checked again:

```cmd
bitsadmin /list /allusers /verbose
```

If a checker script or scheduled task was created as part of the lab, those artifacts should also be removed.

This is important because persistence mechanisms are often layered. Removing only one component may not fully restore the system.

## Result

This task demonstrated how BITSAdmin can be abused as part of a Windows persistence strategy.

The key idea is that BITS is a legitimate Windows transfer service, but attackers can misuse it to download payloads in the background and combine it with scheduled tasks or checker scripts for persistence.

The identified persistence concept was:

```text
BITSAdmin-based persistence
```

The supporting mechanism was:

```text
Checker script and scheduled task concept
```

No flag was required for this task. The objective was to understand, document, detect, and clean up the persistence technique.

## Security Takeaways

This task highlights how trusted Windows components can be abused for persistence.

From a defensive perspective, BITS activity should be monitored because attackers may use it to download payloads while blending in with legitimate system behavior.

Important detection and mitigation points include:

* Monitor BITS job creation and modification.
* Review BITS Client Operational logs.
* Investigate jobs created by unusual users.
* Correlate BITS activity with scheduled task creation.
* Look for repeated recreation of deleted BITS jobs.
* Restrict unnecessary script execution.
* Monitor suspicious download destinations.
* Remove all related artifacts during cleanup, not only the BITS job.

## MITRE ATT&CK Mapping

| Tactic          | Technique                          | ID        |
| --------------- | ---------------------------------- | --------- |
| Persistence     | BITS Jobs                          | T1197     |
| Defense Evasion | BITS Jobs                          | T1197     |
| Persistence     | Scheduled Task/Job: Scheduled Task | T1053.005 |
