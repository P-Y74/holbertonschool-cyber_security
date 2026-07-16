# Control Gaps

## Gap ID: G-001

**Gap Description:**
The server room does not have access restrictions specific to authorized IT personnel. The same generic badge issued to all employees can be used to enter the room.

**Category x Function Missing:**
Physical Preventive

**Affected Asset(s) or Zone:**
MedDefense Central server room and the critical servers located inside it

**Risk if Unaddressed:**
An unauthorized employee or contractor could physically access servers, copy sensitive information, modify equipment or interrupt critical services. This could affect Confidentiality, Integrity and Availability.

**Evidence:**
Marcus's notes state that the server room uses the same generic badge issued to all staff. The Physical Preventive controls identified in the matrix only cover visitor registration at the main entrance and do not protect the server room.

## Gap ID: G-002

**Gap Description:**
Critical IT areas, including the server room corridor and network closets, are not covered by cameras or access logging.

**Category x Function Missing:**
Physical Detective

**Affected Asset(s) or Zone:**
Server room, network closets and administrative IT areas

**Risk if Unaddressed:**
Unauthorized physical access or tampering may remain undetected, and MedDefense may be unable to identify who accessed critical infrastructure after an incident. This creates risks to Confidentiality, Integrity and Availability.

**Evidence:**
Artifact 6 confirms that cameras only cover entrances and the parking garage. No cameras are installed near the server room, network closets or administrative wing.

## Gap ID: G-003

**Gap Description:**
MedDefense has no centralized log collection, security monitoring or automated alerting system.

**Category x Function Missing:**
Technical Detective

**Affected Asset(s) or Zone:**
Firewall, Active Directory, Windows servers, Linux servers, Apache services, EHR application and endpoints

**Risk if Unaddressed:**
Malicious activity may continue for a long period without detection. Attackers could access sensitive data, modify systems or disrupt services before the IT team becomes aware of the compromise.

**Evidence:**
Artifact 8 states that logs are stored locally, no SIEM exists and no automated security alerting is configured. The crypto-miner on `billing-srv-01` was only discovered after repeated performance issues.

## Gap ID: G-004

**Gap Description:**
Windows and Linux servers are not protected by the existing Sophos endpoint protection deployment.

**Category x Function Missing:**
Technical Preventive

**Affected Asset(s) or Zone:**
EHR servers, billing server, domain controllers, file servers, web server and other Windows or Linux servers

**Risk if Unaddressed:**
Malware may execute on critical servers without being blocked, leading to unauthorized access, data modification, data encryption or service outages. Confidentiality, Integrity and Availability could all be affected.

**Evidence:**
Artifact 4 confirms that Sophos covers Windows workstations but does not cover Windows servers or Linux servers because the required protection license was not purchased.

## Gap ID: G-005

**Gap Description:**
MedDefense has no isolated, offline or offsite backup copy, and several critical systems are excluded from the backup scope.

**Category x Function Missing:**
Technical Corrective

**Affected Asset(s) or Zone:**
PACS server, secondary domain controller, Westside server, medical device configurations, O365 data and all systems stored in the Central server room

**Risk if Unaddressed:**
A ransomware attack, fire, flood or physical failure could destroy both production systems and local backups. MedDefense may be unable to restore critical clinical and administrative services, creating a major Availability impact and possible loss of data Integrity.

**Evidence:**
Artifact 5 states that the backup NAS is located in the same room and on the same network as the servers. No offsite or cloud backup exists, and several important assets are not included in the backup jobs.

## Gap ID: G-006

**Gap Description:**
MedDefense has no documented and fully tested disaster recovery or business continuity procedure.

**Category x Function Missing:**
Administrative Corrective

**Affected Asset(s) or Zone:**
Clinical operations, EHR, PACS, billing, Active Directory, network services and all three MedDefense sites

**Risk if Unaddressed:**
During a major outage, staff may not know which systems to restore first, who is responsible or how clinical operations should continue. This could extend service disruption and create serious Availability and patient safety impacts.

**Evidence:**
Only one partial restore test was performed 8 months ago, and no full disaster recovery test has ever been completed. Marcus's notes also state that no business continuity or disaster recovery plan exists.

## Gap ID: G-007

**Gap Description:**
MedDefense has no formal incident response plan defining containment, investigation, escalation, recovery and communication responsibilities.

**Category x Function Missing:**
Administrative Corrective

**Affected Asset(s) or Zone:**
All systems, data, departments and sites

**Risk if Unaddressed:**
Security incidents may be handled inconsistently or too slowly. Attackers may remain active, evidence may be lost and compromised systems may be returned to service without correcting the original entry point.

**Evidence:**
Marcus's notes state that no formal incident response plan exists and that the January ransomware incident was handled in an ad-hoc manner for 4 days.

## Gap ID: G-008

**Gap Description:**
The Central network lacks segmentation between workstations, servers and medical IoT devices.

**Category x Function Missing:**
Technical Preventive

**Affected Asset(s) or Zone:**
Central network, EHR systems, billing server, medical devices, patient monitors, infusion pumps and workstations

**Risk if Unaddressed:**
An attacker who compromises one workstation could move laterally to critical servers or medical devices. This could expose patient information, alter systems or disrupt patient-care equipment, affecting Confidentiality, Integrity and Availability.

**Evidence:**
The onboarding packet and network diagram show that servers, workstations and medical devices share the same `10.10.0.0/16` network and that no VLANs are configured.

## Gap ID: G-009

**Gap Description:**
No compensating control is documented for the MRI scanner running Windows XP, which may not be capable of receiving current security patches.

**Category x Function Missing:**
Technical Compensating

**Affected Asset(s) or Zone:**
Siemens MAGNETOM MRI scanner and the network segment connected to it

**Risk if Unaddressed:**
Known vulnerabilities in the unsupported operating system could be exploited to compromise the device or use it as an entry point into the network. This could affect the Integrity and Availability of clinical services and potentially expose sensitive information.

**Evidence:**
Marcus's notes confirm that the MRI scanner runs Windows XP. The Control Summary Matrix contains no Compensating controls, and no isolation, allowlisting or additional monitoring is documented for the device.

## Gap ID: G-010

**Gap Description:**
Multi-factor authentication is not required for remote access, privileged accounts or organization-wide user accounts.

**Category x Function Missing:**
Technical Preventive

**Affected Asset(s) or Zone:**
Remote access, VPN accounts, administrator accounts, O365 accounts and Active Directory users

**Risk if Unaddressed:**
A stolen or phished password may be sufficient for an attacker to access internal or cloud systems. This could lead to unauthorized disclosure or modification of data and possible service disruption.

**Evidence:**
Artifact 3 states that MFA is only recommended for remote access and is not required. The onboarding packet indicates that only James Chen has configured MFA on his account.

## Overall Pattern

MedDefense's security posture is mainly prevention-oriented, with firewalls, password rules, SSH hardening and basic physical access controls. However, detection and corrective capabilities are weak, fragmented or limited in coverage, which means an attacker who bypasses preventive controls may remain undetected and MedDefense may struggle to contain and recover from the incident.
