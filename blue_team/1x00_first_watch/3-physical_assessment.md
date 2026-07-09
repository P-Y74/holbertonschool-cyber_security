# Physical Security Assessment

## Observation 1: Server Room Access

**Vulnerability:**
The server room uses the same generic badge issued to all employees, including clinical, administrative and custodial staff. There is no camera covering the door and no visitor log.

**Threat:**
An unauthorized employee, visitor or contractor could enter the server room without being properly detected or traced.

**Impact:**
Confidentiality, Integrity and Availability are all impacted. An unauthorized person with physical access to servers could view sensitive information, tamper with systems or disrupt critical infrastructure.

**Severity:**
Critical. The server room contains core IT infrastructure, and weak physical access control creates direct risk to critical systems supporting hospital operations.

## Observation 2: Network Closet

**Vulnerability:**
The network closet is unlocked and the door is ajar. A laminated sheet labeled "Network Maintenance Credentials" is posted next to the switch stack and contains the username and password for the switch management interface.

**Threat:**
An unauthorized person could enter the closet, steal the switch credentials and access or modify the network configuration.

**Impact:**
Confidentiality, Integrity and Availability are impacted. An attacker with switch management access could monitor traffic, change network configuration, disrupt connectivity or create a path for further compromise.

**Severity:**
Critical. The combination of physical access to network equipment and exposed administrative credentials creates a direct path to network compromise.

## Observation 3: Nurse Station

**Vulnerability:**
A workstation is left logged into the EHR system with a patient record visible on screen. The session appears to have been idle for at least 15 minutes, and a sign instructs staff not to log out between shifts.

**Threat:**
An unauthorized person passing through the nurse station could view the patient record or use the active session to access additional EHR data.

**Impact:**
Confidentiality is primarily impacted because protected health information is visible to unauthorized individuals. Integrity could also be impacted if someone uses the unlocked session to modify patient records.

**Severity:**
High. The workstation exposes live patient data and allows possible misuse of an authenticated EHR session in a clinical area.

## Observation 4: Medical IoT

**Vulnerability:**
The vital signs monitor displays its IP address and firmware version. The firmware version is old, last updated in 2019, and the device appears to be on the same IP range as nurse station workstations.

**Threat:**
An attacker with network access could use the exposed device information to identify vulnerabilities, target the monitor or move laterally between workstations and medical devices.

**Impact:**
Confidentiality, Integrity and Availability are impacted. An attacker could access device information, alter monitoring behavior or disrupt a device used in patient care.

**Severity:**
High. Medical IoT devices support clinical operations, and the lack of visible network segmentation increases the risk that a workstation compromise could affect patient-care devices.

## Observation 5: Emergency Exit

**Vulnerability:**
A fire exit door between the public waiting area and the restricted administrative wing is propped open with a wooden wedge. The open path leads toward the IT department and James Chen's office.

**Threat:**
An unauthorized visitor could bypass normal access controls and enter a restricted administrative area.

**Impact:**
Confidentiality, Integrity and Availability may be impacted. An intruder could view sensitive documents, access offices, tamper with equipment or disrupt administrative and IT operations.

**Severity:**
High. The open emergency exit creates an uncontrolled path from a public area to restricted offices connected to security and IT operations.
