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
