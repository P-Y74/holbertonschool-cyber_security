# Structured Environment Summary

## Organization Overview

### MEDDEFENSE CENTRAL HOSPITAL

**350-bed acute care facility, downtown location**

* **Departments**: Emergency, Surgery, Cardiology, Radiology, Oncology, Pediatrics, Maternity, Pharmacy, Laboratory, Administration
* **Approximate staff**: 1,400 clinical and support staff
* **Building**: 6 floors plus basement level, including the mechanical/server room
* **Parking**: underground garage for staff and surface lot for visitors

### WESTSIDE CLINIC

**Outpatient facility, suburban location, approximately 12 minutes from Central**

* **Services**: Primary care, diagnostic imaging, X-ray, ultrasound, blood work, minor procedures, physical therapy
* **Approximate staff**: 180
* **Building**: 2-story medical office complex, with shared parking next to a retail plaza
* **Note**: Westside shares some IT services with Central but has its own local server closet for basic needs

### CORPORATE HQ

**Administrative offices in Greenfield Business Park, approximately 15 minutes from Central**

* **Departments**: Finance, HR, Legal, Marketing, Executive Leadership, IT
* **Approximate staff**: 220
* **Building**: leased office space on the 3rd floor of a 5-story commercial building
* **IT department**: located at Corporate HQ, with 12 staff members

**Total employees organization-wide: approximately 2,000**

### Security and IT Reporting Structure

* CEO: Dr. Patricia Morales
* The CISO role is currently vacant.
* James Chen acts as Deputy CISO and effectively reports directly to the CEO.
* The Security Analyst reports to James Chen and is replacing Marcus Webb.
* Sarah Park, IT Director, manages IT operations and a 12-person IT team.
* Sarah Park and James Chen are peers.
* James has authority over security policy but not over IT operations, which may create friction when security improvements require IT implementation.
* The IT team includes system administrators, network technicians, a database administrator, helpdesk analysts, desktop support technicians and one vacant IT intern position.

## IT Infrastructure Identified

### SERVERS -- MEDDEFENSE CENTRAL

| Server name      | OS                     | Function                          | Notes                                                                                                               |
| ---------------- | ---------------------- | --------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
| `ehr-srv-01`     | Ubuntu 20.04 LTS       | EHR Application Server            | SSH password authentication was migrated to key-only on this server                                                 |
| `ehr-db-01`      | Ubuntu 20.04 LTS       | EHR Database (PostgreSQL)         | PostgreSQL is accessible from the entire `10.10.0.0/16` range and should be restricted to `ehr-srv-01` only         |
| `pacs-srv-01`    | Windows Server 2016    | PACS Imaging Server               | Radiology department uses a shared login for the PACS workstation                                                   |
| `billing-srv-01` | Ubuntu 18.04 LTS       | Billing/Claims Processing         | Recurrent performance issues; IT restarts the server but the root cause is not documented                           |
| `ad-dc-01`       | Windows Server 2019    | Primary Domain Controller         | Supports organization-wide authentication                                                                           |
| `ad-dc-02`       | Windows Server 2019    | Secondary Domain Controller       | Supports organization-wide authentication                                                                           |
| `file-srv-01`    | Windows Server 2016    | Department File Shares            | Used by departments for file storage                                                                                |
| `print-srv-01`   | Windows Server 2012 R2 | Print Server [UNVERIFIED]         | Has not been physically confirmed in over a year; operating system reached end of support in October 2023           |
| `backup-srv-01`  | Ubuntu 22.04 LTS       | Backup Server with Veeam agent    | Veeam runs nightly backups to a local NAS located in the same server room, on the same network and in the same rack |
| `web-srv-01`     | Ubuntu 20.04 LTS       | Public Website and Patient Portal | Located in the DMZ according to the draft network diagram                                                           |

Central infrastructure observations:

* Central uses a flat network on the same broadcast domain: `10.10.0.0/16`.
* No VLANs are configured according to Marcus's draft network diagram.
* Medical devices, workstations, servers, thin clients, monitors and pumps are on the same network.
* `web-srv-01` is placed in a DMZ behind the FortiGate 100F.
* The network diagram is simplified and incomplete.

### SERVERS -- WESTSIDE CLINIC

| Server name | OS                  | Function                         | Notes                            |
| ----------- | ------------------- | -------------------------------- | -------------------------------- |
| `ws-srv-01` | Windows Server 2016 | Local file server and scheduling | Supports local clinic operations |

**Marcus's note:** "There might be another server in the closet at Westside. Mike Torres mentioned it but I never confirmed. Check."

Westside connectivity:

* Westside connects to Central through an IPsec VPN.
* The VPN runs through a Netgear Nighthawk consumer-grade router.
* Westside has no dedicated firewall documented.
* Westside has one unmanaged switch, brand unknown.

### SERVERS -- CORPORATE HQ

No on-premise servers are documented at Corporate HQ. HQ staff use cloud services and connect to Central's infrastructure through a site-to-site VPN.

HQ connectivity:

* Corporate HQ connects to Central through a site-to-site VPN.
* The network and internet connection are managed by the building landlord.
* MedDefense has its own VLAN at HQ.
* HQ VPN access control lists have not been audited.

### NETWORK EQUIPMENT (PARTIAL)

**Central**

* Cisco core switch, model unknown
* 2 Cisco access switches per floor
* Fortinet FortiGate 100F firewall
* Ubiquiti UniFi APs, 12 units
* Guest WiFi exists as a separate SSID, but isolation is not verified

**Westside**

* 1 unmanaged switch, brand unknown
* 1 Netgear Nighthawk consumer-grade router
* No dedicated firewall documented
* WiFi configuration unknown

**Corporate HQ**

* Network and internet managed by Greenfield Building Management
* MedDefense has its own VLAN
* Site-to-site VPN to Central
* VPN ACLs not audited

### ENDPOINTS

**Central**

* Approximately 320 Windows 10 workstations
* Approximately 60 thin clients in clinical areas

**Westside**

* Approximately 45 Windows 10 workstations

**Corporate HQ**

* Approximately 120 Windows 10/11 workstations
* Approximately 30 remote-capable laptops

**Tablets**

* Approximately 25 iPads used by physicians for rounds
* Management status is unclear

**Marcus's note:** "Nobody has a complete count of endpoints. The numbers above are from the last AD report but that was 8 months ago."

### MEDICAL DEVICES (IoT)

| Device category            | Quantity / model                          | Location                      | Technical details                            |
| -------------------------- | ----------------------------------------- | ----------------------------- | -------------------------------------------- |
| Connected patient monitors | Approximately 80 Philips IntelliVue units | Central                       | Network-connected                            |
| Infusion pumps             | Approximately 120 BD Alaris units         | Central                       | Network-connected for dosage updates         |
| MRI scanner                | 1 Siemens MAGNETOM                        | Radiology department, Central | Runs Windows XP according to Marcus's note   |
| CT scanner                 | 1 GE Revolution                           | Central                       | Operating system unknown                     |
| Nurse call system          | IP-based system                           | Central                       | Integrated with the phone system             |
| Badge/access system        | HID Global                                | Some doors                    | Connected to Active Directory for some doors |

### CLOUD / THIRD-PARTY SERVICES

| Vendor                         | Service                  | Notes                                                                                                                            |
| ------------------------------ | ------------------------ | -------------------------------------------------------------------------------------------------------------------------------- |
| Microsoft                      | O365 E3                  | Organization-wide cloud productivity and collaboration service                                                                   |
| Sophos                         | Endpoint Protection      | Deployment status across all endpoints is unknown                                                                                |
| Veeam                          | Backup Software          | Used for nightly backups to local NAS                                                                                            |
| Fortinet                       | FortiGate Support        | Supports Central firewall infrastructure                                                                                         |
| Ubiquiti                       | UniFi Controller License | Used for Central wireless infrastructure                                                                                         |
| Greenfield Building Management | HQ network and internet  | Included in HQ lease                                                                                                             |
| ClearView Security             | Guard service at Central | 1 guard at main entrance, Monday to Friday, 7AM to 7PM; no weekend or night coverage                                             |
| MedTech Solutions              | EHR maintenance          | Includes EHR software updates, not hardware; SLA is 4-hour response for critical issues and 24-hour response for standard issues |

### AUTHENTICATION AND ACCESS CONTROLS

* Active Directory is supported by `ad-dc-01` and `ad-dc-02`.
* Password policy requires 8 characters minimum, 90-day rotation and complexity.
* MFA is not deployed organization-wide.
* MFA is only documented on James Chen's personal account.
* Shared accounts are used in the radiology department for the PACS workstation.
* SSH password authentication remains enabled on Linux servers except `ehr-srv-01`.
* The badge/access system is connected to Active Directory for some doors.

## Data and Services

What types of data does MedDefense handle? What critical services depend on IT infrastructure? Who uses them?

### Types of data handled

* **Protected Health Information / PHI**: patient data, medical records and EHR data
* **Medical imaging data**: PACS data, radiology images, X-ray, ultrasound, MRI and CT-related data
* **Billing and claims data**: billing records, claims processing data and patient financial data
* **Administrative and corporate data**: finance, HR, legal, marketing and executive leadership data
* **Authentication and identity data**: Active Directory accounts, user credentials, access rights and badge-related identity data
* **Operational and clinical data**: scheduling information, nurse call system data and infusion pump dosage update data
* **Email and collaboration data**: Microsoft O365 E3 email, documents and collaboration content
* **Backup data**: local backup copies stored through Veeam and the local NAS

### Critical services and their users

| Service                         | Supporting infrastructure                                        | Users                                           |
| ------------------------------- | ---------------------------------------------------------------- | ----------------------------------------------- |
| EHR                             | `ehr-srv-01`, `ehr-db-01`, MedTech Solutions                     | Clinical staff, physicians, nurses              |
| PACS / Imaging                  | `pacs-srv-01`, MRI scanner, CT scanner, radiology devices        | Radiology department, clinicians                |
| Billing / Claims                | `billing-srv-01`                                                 | Billing, finance, administration                |
| Authentication                  | `ad-dc-01`, `ad-dc-02`, Active Directory                         | All domain users                                |
| File shares                     | `file-srv-01`, `ws-srv-01`                                       | Departments, clinic staff                       |
| Backup / recovery               | `backup-srv-01`, local NAS, Veeam                                | IT, business continuity and recovery operations |
| Patient portal / public website | `web-srv-01`, DMZ                                                | Patients, public users                          |
| Email and collaboration         | Microsoft O365 E3                                                | Organization-wide users                         |
| Network connectivity            | FortiGate, switches, VPNs, routers, building-managed HQ network  | All sites                                       |
| Clinical medical devices        | Patient monitors, infusion pumps, MRI, CT, nurse call system     | Clinical staff, radiology, nurses, physicians   |
| Physical access control         | HID Global badge/access system, ClearView Security guard service | Staff, IT, facilities/security personnel        |

## Known Unknowns

### MEDDEFENSE CENTRAL

* `print-srv-01` has not been physically confirmed in over a year.
* The exact model of the Cisco core switch is unknown.
* The full Central network topology is unknown because the available diagram is simplified and incomplete.
* Central guest WiFi exists, but its actual isolation from internal systems is not verified.
* The server room badge access model is unclear because it appears to use the same generic badge issued to staff.
* Physical monitoring near IT infrastructure is incomplete; no cameras are documented in the server room corridor.
* Backup recoverability is not documented.
* Offsite or cloud backup availability is not documented.
* The impact and root cause of the recurring `billing-srv-01` performance issues are unknown.

### WESTSIDE CLINIC

* There may be another server in the Westside server closet, but it has not been confirmed.
* The brand and model of the unmanaged switch are unknown.
* Westside WiFi configuration is unknown.
* The exact Westside network topology is not documented.
* The Netgear router configuration, VPN hardening and access control rules are not documented.
* Physical security for the Westside server closet is insufficiently documented, and the closet reportedly does not lock.

### CORPORATE HQ

* HQ VPN ACLs have not been audited.
* The full security configuration of the building-managed network is unknown.
* The level of control MedDefense has over the landlord-managed network is not documented.

### ENDPOINTS

* The exact number of active endpoints is unknown because the last AD report is 8 months old.
* The current deployment status of Sophos Endpoint Protection across all endpoints is unknown.
* The management status of the approximately 25 physician iPads is unclear.
* The full inventory of remote-capable laptops is not confirmed beyond the available estimate.
* No formal endpoint security evaluation has been completed.

### MEDICAL DEVICES (IoT)

* The MRI scanner runs Windows XP, but the packet does not specify whether isolation, monitoring, vendor support or compensating controls are in place.
* The CT scanner operating system is unknown.
* The segmentation status of patient monitors and infusion pumps is unclear beyond the note that they are on the same flat network as other systems.
* The security posture of IoT medical devices has not been formally assessed.

### NETWORK

* No VLANs are documented at Central.
* The Central network appears to be flat across `10.10.0.0/16`.
* The actual isolation of the guest WiFi is unverified.
* Westside has no dedicated firewall documented.
* HQ VPN ACLs have not been audited.
* Network segmentation planning was mentioned but no implemented segmentation is documented.
* The network diagram is incomplete and may not reflect the real topology.

### CLOUD AND THIRD-PARTY SERVICES

* A complete cloud service inventory does not exist.
* O365 is documented as the main cloud service, but other department-level cloud services may exist.
* Vendor responsibilities and security controls are not fully documented for all third-party services.
* MedTech Solutions provides EHR maintenance, but hardware responsibility is excluded from the documented service scope.

### COMPLIANCE, RESILIENCE AND PROCESS

* HIPAA Security Rule compliance has never been formally assessed.
* No formal incident response plan exists.
* No business continuity plan is documented.
* No disaster recovery plan is documented.
* No formal vulnerability assessment of all servers has been completed.
* Threat landscape analysis for healthcare-specific attackers and attack methods was started but not completed.
* The previous ransomware response affecting `billing-srv-01` was handled in an ad-hoc manner.

### EMPLOYEES

* Documented site headcount totals approximately 1,800 employees:

  * Central: 1,400
  * Westside: 180
  * Corporate HQ: 220
* The organization-wide total is approximately 2,000 employees.
* The difference of approximately 200 employees is not explained in the provided documentation and may be due to rounding, contractors, remote workers, part-time staff or incomplete site-level figures.
