# Persistence in Windows

## Overview

This directory contains projects focused on Windows persistence techniques.

Persistence is a key concept in cybersecurity. After gaining access to a system, attackers often try to maintain that access across reboots, logoffs, service restarts, or user activity. Windows provides many legitimate mechanisms that can be abused for this purpose, such as Startup folders, Registry autorun keys, services, scheduled tasks, and BITS jobs.

The goal of these projects is to understand how these techniques work, how they can be detected, and how they can be removed from a defensive security perspective.

## Disclaimer

All exercises in this directory were completed for educational purposes only as part of the Holberton School cybersecurity curriculum.

The techniques documented here were tested only in controlled lab environments and dedicated virtual machines provided for the projects.

No technique described in this repository should be used against systems without explicit authorization.

## Current Projects

| Project | Description |
| ------- | ----------- |
| [0x00_acces_persistence_techniques](./0x00_acces_persistence_techniques) | Introduction to common Windows persistence techniques, including Startup folders, Registry autorun keys, services, scheduled tasks, and BITSAdmin. |

## Skills Practiced

Through these projects, I practiced:

- Identifying common Windows persistence mechanisms.
- Analyzing suspicious autorun locations.
- Using Windows tools such as PowerShell, Registry Editor, Task Scheduler, Services Manager, Event Viewer, and Autoruns.
- Understanding how legitimate Windows features can be abused by attackers.
- Documenting persistence techniques from a defensive and educational perspective.
- Cleaning up persistence artifacts after analysis.

## Repository Structure

```text
persistence_in_windows/
├── README.md
└── 0x00_acces_persistence_techniques/
    ├── README.md
    ├── 0-flag.txt
    ├── 1-flag.txt
    ├── 2-flag.txt
    └── 3-flag.txt
```

## Defensive Focus

Although the projects involve offensive persistence concepts, the main objective is defensive understanding.

Each technique is studied to better understand:

* How attackers maintain access.
* Where persistence artifacts are commonly stored.
* Which tools can help detect suspicious entries.
* What logs and indicators should be monitored.
* How to safely remove unauthorized persistence mechanisms.

## Notes

This directory may evolve as additional Windows persistence or post-exploitation projects are added during the Holberton School cybersecurity specialization.
