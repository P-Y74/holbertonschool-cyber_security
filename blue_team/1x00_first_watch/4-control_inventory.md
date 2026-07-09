# Control Inventory

## Security Control Identification

### Control ID: C-001

**Control Name:** FortiGate Inbound Web Access Rule  
**Description:** Allows inbound HTTP and HTTPS traffic from the Internet to `web-srv-01` in the DMZ.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** `web-srv-01`, DMZ, internal network  
**Source:** Artifact 1 - Firewall Configuration Extract  

### Control ID: C-002

**Control Name:** DMZ Placement for Public Web Server  
**Description:** Places the public website and patient portal server behind the FortiGate firewall in the DMZ instead of directly inside the internal network.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** `web-srv-01`, internal network, public web services  
**Source:** Artifact 1 - Firewall Configuration Extract  

### Control ID: C-003

**Control Name:** Westside VPN Access Policy  
**Description:** Allows traffic from the Westside VPN subnet to the Central server subnet. This control exists, but it is overly permissive because it allows all services.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** Central server subnet, Westside-to-Central connectivity  
**Source:** Artifact 1 - Firewall Configuration Extract  

### Control ID: C-004

**Control Name:** HQ VPN Access Policy  
**Description:** Allows traffic from the HQ VPN subnet to the Central server subnet. This control exists, but it is overly permissive because it allows all services.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** Central server subnet, HQ-to-Central connectivity  
**Source:** Artifact 1 - Firewall Configuration Extract  

### Control ID: C-005

**Control Name:** Firewall Default Deny Rule  
**Description:** Denies traffic that does not match an allowed firewall rule and logs the denied traffic.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** Network perimeter, DMZ, internal network, server subnet  
**Source:** Artifact 1 - Firewall Configuration Extract  

### Control ID: C-006

**Control Name:** Firewall Traffic Logging  
**Description:** Firewall rules are configured with traffic logging enabled, including `logtraffic all` or `logtraffic utm` depending on the rule.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** FortiGate firewall, network traffic, DMZ, VPN connections  
**Source:** Artifact 1 - Firewall Configuration Extract  

### Control ID: C-007

**Control Name:** SSH Root Login Disabled on `ehr-srv-01`  
**Description:** The SSH configuration on `ehr-srv-01` disables direct root login with `PermitRootLogin no`.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** `ehr-srv-01`, EHR application environment  
**Source:** Artifact 2 - SSH Configuration  

### Control ID: C-008

**Control Name:** SSH Key-Based Authentication on `ehr-srv-01`  
**Description:** SSH password authentication is disabled and public key authentication is enabled on `ehr-srv-01`.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** `ehr-srv-01`, SSH access  
**Source:** Artifact 2 - SSH Configuration  

### Control ID: C-009

**Control Name:** SSH Brute-Force Reduction Settings  
**Description:** SSH authentication attempts are limited with `MaxAuthTries 3`, and the login grace period is limited to 60 seconds.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** `ehr-srv-01`, SSH access  
**Source:** Artifact 2 - SSH Configuration  

### Control ID: C-010

**Control Name:** SSH Session Hardening  
**Description:** SSH forwarding features are disabled with `X11Forwarding no` and `AllowTcpForwarding no`.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** `ehr-srv-01`, SSH access, internal network  
**Source:** Artifact 2 - SSH Configuration  

### Control ID: C-011

**Control Name:** SSH Authentication Logging  
**Description:** SSH logging is configured with `SyslogFacility AUTH` and `LogLevel VERBOSE` to provide detailed authentication logs.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** `ehr-srv-01`, SSH access  
**Source:** Artifact 2 - SSH Configuration  

### Control ID: C-012

**Control Name:** Password Complexity Policy  
**Description:** Passwords must contain at least one uppercase letter, one lowercase letter, one number and one special character.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** Employee accounts, contractor accounts, vendor accounts  
**Source:** Artifact 3 - Password Policy  

### Control ID: C-013

**Control Name:** Minimum Password Length Requirement  
**Description:** Passwords must be at least 8 characters long.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** Employee accounts, contractor accounts, vendor accounts  
**Source:** Artifact 3 - Password Policy  

### Control ID: C-014

**Control Name:** Password Rotation and History Policy  
**Description:** Passwords must be changed every 90 days, and the system remembers the last 5 passwords.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** Employee accounts, contractor accounts, vendor accounts  
**Source:** Artifact 3 - Password Policy  

### Control ID: C-015

**Control Name:** Account Lockout Policy  
**Description:** Accounts lock for 30 minutes after 5 failed login attempts.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** Employee accounts, Active Directory accounts, Windows systems  
**Source:** Artifact 3 - Password Policy  

### Control ID: C-016

**Control Name:** Active Directory Password Policy Enforcement  
**Description:** Password requirements are enforced through Active Directory Group Policy for Windows systems.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** Windows systems, Active Directory accounts  
**Source:** Artifact 3 - Password Policy  

### Control ID: C-017

**Control Name:** Sophos Endpoint Protection Deployment  
**Description:** Sophos Endpoint Protection is deployed on managed Windows 10/11 workstations.  
**Category:** Technical  
**Function:** Preventive  
**Asset(s) Protected:** Managed Windows workstations  
**Source:** Artifact 4 - Sophos Antivirus Status Report  

### Control ID: C-018

**Control Name:** Sophos Malware Detection  
**Description:** Sophos detects threats on managed endpoints, including adware, phishing URLs, crypto-miner activity and trojans.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** Managed Windows workstations  
**Source:** Artifact 4 - Sophos Antivirus Status Report  

### Control ID: C-019

**Control Name:** Sophos Blocking and Quarantine Actions  
**Description:** Sophos blocks or quarantines detected threats on managed endpoints.  
**Category:** Technical  
**Function:** Corrective  
**Asset(s) Protected:** Managed Windows workstations  
**Source:** Artifact 4 - Sophos Antivirus Status Report  

### Control ID: C-020

**Control Name:** Nightly Veeam Full Backups  
**Description:** Veeam performs a daily full backup at 02:00 AM for selected virtual machines on the VMware cluster at Central.  
**Category:** Technical  
**Function:** Corrective  
**Asset(s) Protected:** `ehr-srv-01`, `ehr-db-01`, `billing-srv-01`, `ad-dc-01`, `file-srv-01`, `web-srv-01`  
**Source:** Artifact 5 - Backup Configuration  

### Control ID: C-021

**Control Name:** Backup Retention Policy  
**Description:** Backups are retained for 14 days before older backups are automatically deleted.  
**Category:** Technical  
**Function:** Corrective  
**Asset(s) Protected:** Selected Central virtual machines backed up by Veeam  
**Source:** Artifact 5 - Backup Configuration  

### Control ID: C-022

**Control Name:** Partial Restore Testing  
**Description:** A partial restore test of `file-srv-01` was performed 8 months ago and completed successfully, although it took 6 hours for a single server.  
**Category:** Administrative  
**Function:** Corrective  
**Asset(s) Protected:** Backup and recovery process, `file-srv-01`  
**Source:** Artifact 5 - Backup Configuration  

### Control ID: C-023

**Control Name:** Main Entrance Guard Service  
**Description:** A uniformed security guard is stationed at the MedDefense Central main entrance from Monday to Friday, 07:00 to 19:00.  
**Category:** Physical  
**Function:** Deterrent  
**Asset(s) Protected:** MedDefense Central main entrance, lobby, visitor entry point  
**Source:** Artifact 6 - Physical Security Contract  

### Control ID: C-024

**Control Name:** Visitor Registration and Badge Verification  
**Description:** The security guard performs visitor registration and badge verification at the main entrance desk.  
**Category:** Physical  
**Function:** Preventive  
**Asset(s) Protected:** MedDefense Central, staff areas, restricted areas accessible from the main entrance  
**Source:** Artifact 6 - Physical Security Contract  

### Control ID: C-025

**Control Name:** Physical Security Incident Reporting  
**Description:** The guard service includes incident reporting duties for security-relevant physical events at the main entrance.  
**Category:** Physical  
**Function:** Detective  
**Asset(s) Protected:** MedDefense Central main entrance, lobby, visitor entry point  
**Source:** Artifact 6 - Physical Security Contract  

### Control ID: C-026

**Control Name:** CCTV Camera Coverage at Main Entrances and Parking Garage  
**Description:** MedDefense Central has analog cameras covering the main entrance, ER entrance and parking garage entrance.  
**Category:** Physical  
**Function:** Detective  
**Asset(s) Protected:** Main entrance, ER entrance, parking garage entrance  
**Source:** Artifact 6 - Physical Security Contract  

### Control ID: C-027

**Control Name:** CCTV DVR Retention  
**Description:** Camera footage at Central is stored on a local DVR for 30 days before being overwritten.  
**Category:** Physical  
**Function:** Detective  
**Asset(s) Protected:** Physical security footage for covered camera areas  
**Source:** Artifact 6 - Physical Security Contract  

### Control ID: C-028

**Control Name:** Annual Security Awareness Training  
**Description:** The CyberSafe Basics module is mandatory annually for all staff and covers general security awareness topics.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** Organization-wide staff behavior, user accounts, endpoints, physical areas  
**Source:** Artifact 7 - Training Records  

### Control ID: C-029

**Control Name:** Phishing Recognition Training  
**Description:** Staff training includes phishing email recognition.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** User accounts, email environment, endpoints  
**Source:** Artifact 7 - Training Records  

### Control ID: C-030

**Control Name:** Physical Security Awareness Training  
**Description:** Staff training includes physical security awareness topics such as tailgating and clean desk practices.  
**Category:** Administrative  
**Function:** Preventive  
**Asset(s) Protected:** Offices, workstations, sensitive documents, restricted areas  
**Source:** Artifact 7 - Training Records  

### Control ID: C-031

**Control Name:** Suspicious Activity Reporting Training  
**Description:** Staff training includes reporting suspicious activity, which supports early identification of security issues.  
**Category:** Administrative  
**Function:** Detective  
**Asset(s) Protected:** Organization-wide operations, staff areas, endpoints, physical areas  
**Source:** Artifact 7 - Training Records  

### Control ID: C-032

**Control Name:** Local FortiGate Log Retention  
**Description:** FortiGate logs are stored locally with 30 days of retention.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** FortiGate firewall, network perimeter, VPN traffic  
**Source:** Artifact 8 - Log Management  

### Control ID: C-033

**Control Name:** Linux Server Syslog  
**Description:** Linux servers write logs to `/var/log` using standard syslog.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** Linux servers  
**Source:** Artifact 8 - Log Management  

### Control ID: C-034

**Control Name:** Apache Log Retention  
**Description:** Apache logs on `web-srv-01` and `billing-srv-01` rotate weekly through logrotate and are retained for 4 weeks.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** `web-srv-01`, `billing-srv-01`, Apache web services  
**Source:** Artifact 8 - Log Management  

### Control ID: C-035

**Control Name:** EHR Application Audit Log  
**Description:** The EHR application has its own audit log managed by the vendor, with exports available on request within 48 hours.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** EHR application, EHR user activity, patient records  
**Source:** Artifact 8 - Log Management  

### Control ID: C-036

**Control Name:** Active Directory Critical Event Logging  
**Description:** Active Directory logs critical events, although there is no automated alerting and logs are only reviewed manually when something breaks.  
**Category:** Technical  
**Function:** Detective  
**Asset(s) Protected:** Active Directory, domain accounts, authentication events  
**Source:** Artifact 8 - Log Management  

## Control Summary Matrix

| Category       | Preventive                                                                  | Detective                                              | Corrective          | Compensating | Deterrent |
| -------------- | --------------------------------------------------------------------------- | ------------------------------------------------------ | ------------------- | ------------ | --------- |
| Technical      | C-001, C-002, C-003, C-004, C-005, C-007, C-008, C-009, C-010, C-016, C-017 | C-006, C-011, C-018, C-032, C-033, C-034, C-035, C-036 | C-019, C-020, C-021 |              |           |
| Administrative | C-012, C-013, C-014, C-015, C-028, C-029, C-030                             | C-031                                                  | C-022               |              |           |
| Physical       | C-024                                                                       | C-025, C-026, C-027                                    |                     |              | C-023     |
