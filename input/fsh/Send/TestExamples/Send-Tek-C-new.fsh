Instance: S-Tek-C-new-7be9d2ba-6026-4f19-850c-896de206f2c2
InstanceOf: MedComCareCommunicationMessage
Title: "Send-Tek-C-new"
Description: "Send-Tek-C-new"
Usage: #example
* meta.profile[+] = $CareCommunicationMessage
* type = $BundleType#message
* timestamp = 2024-08-12T11:30:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/f927c454-ef3e-4f60-9640-6727961d6a1f"
* entry[=].resource = f927c454-ef3e-4f60-9640-6727961d6a1f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/0a709ba8-090b-4c03-8040-a23601d0b15a"
* entry[=].resource = 0a709ba8-090b-4c03-8040-a23601d0b15a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/aa5c8b0e-cfb9-4eb6-b1f1-7e96195d4042"
* entry[=].resource = aa5c8b0e-cfb9-4eb6-b1f1-7e96195d4042
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/ad8bf8c0-6626-43cf-8d5a-1fa925c3c401"
* entry[=].resource = ad8bf8c0-6626-43cf-8d5a-1fa925c3c401
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/27162d09-991e-49af-b7f4-ca8e1a047f29"
* entry[=].resource = 27162d09-991e-49af-b7f4-ca8e1a047f29
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/9583c018-8e84-4729-9ac0-8c887b4e6c5e"
* entry[=].resource = 9583c018-8e84-4729-9ac0-8c887b4e6c5e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b86979d0-efb2-4728-a4de-fe2c7cea93fd"
* entry[=].resource = b86979d0-efb2-4728-a4de-fe2c7cea93fd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/48038043-9a8c-402e-9828-2bb4f4b74d24"
* entry[=].resource = 48038043-9a8c-402e-9828-2bb4f4b74d24
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/46037d39-bd84-4419-b132-fa9d9e9c6134"
* entry[=].resource = 46037d39-bd84-4419-b132-fa9d9e9c6134
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/eb27c278-6dab-4c0f-bed2-8b882e3977c1"
* entry[=].resource = eb27c278-6dab-4c0f-bed2-8b882e3977c1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/fd770a95-af42-4545-886d-729d7edfa23a"
* entry[=].resource = fd770a95-af42-4545-886d-729d7edfa23a

//Practitioner - reply message
Instance: 27162d09-991e-49af-b7f4-ca8e1a047f29
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* meta.profile[+] = $MedComCorePractitioner
* name.given = "Emma"
* name.family = "Waters"

Instance: ad8bf8c0-6626-43cf-8d5a-1fa925c3c401
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* meta.profile[+] = $MedComCorePractitionerRole
* practitioner = Reference(27162d09-991e-49af-b7f4-ca8e1a047f29)
* code = $PractitionerRole#sygeplejerske


Instance: 0a709ba8-090b-4c03-8040-a23601d0b15a
InstanceOf: MedComCorePatient
Title: "1st message - Bruno Test Elmer"
Description: "1st message - Patient described with minimal information. Valid only if used in a Bundle."
* meta.profile[+] = $MedComCorePatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* name[official].given = "Bruno"

Instance: 48038043-9a8c-402e-9828-2bb4f4b74d24
InstanceOf: MedComMessagingOrganization 
Title: "1st message - Example of a sender organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* meta.profile[+] = $MedComMessagingOrganzation
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: 46037d39-bd84-4419-b132-fa9d9e9c6134
InstanceOf: MedComMessagingOrganization 
Title: "1st message - Example of a reciever organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* meta.profile[+] = $MedComMessagingOrganzation
* identifier[SOR-ID].value = "382871000016004" 
* identifier[EAN-ID].value = "5790001387419" 
* name = "Arden Lægehus"

// Practitioners - new message
Instance: 9583c018-8e84-4729-9ac0-8c887b4e6c5e
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* meta.profile[+] = $MedComCorePractitioner
* name.given = "Michael"
* name.family = "Burns"

Instance: b86979d0-efb2-4728-a4de-fe2c7cea93fd
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* meta.profile[+] = $MedComCorePractitionerRole
* practitioner = Reference(9583c018-8e84-4729-9ac0-8c887b4e6c5e)
* code = $PractitionerRole#sygeplejerske

// CareCommunication reply example
Instance: f927c454-ef3e-4f60-9640-6727961d6a1f
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_B-reply"
Description: "receive_B-reply"
Usage: #example
* meta.profile[+] = $CareCommunicationMessageheader
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=382871000016004"
* destination[primary].receiver = Reference(46037d39-bd84-4419-b132-fa9d9e9c6134)
* sender = Reference(48038043-9a8c-402e-9828-2bb4f4b74d24)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(aa5c8b0e-cfb9-4eb6-b1f1-7e96195d4042)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


Instance: eb27c278-6dab-4c0f-bed2-8b882e3977c1
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_B-reply"
Description: "receive_B-reply"
Usage: #inline
* target = Reference(f927c454-ef3e-4f60-9640-6727961d6a1f)
* occurredDateTime = 2024-08-12T11:30:00+02:00
* recorded = 2024-08-12T11:30:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(48038043-9a8c-402e-9828-2bb4f4b74d24)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(0ebb6284-eb20-45eb-8113-6620d2d08608)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:231b0921-59b4-474c-8ca8-aee33611d140"
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:ace97a0b-269f-4c67-a9e6-a5b7f20e160e"


// CareCommunication reply example
Instance: aa5c8b0e-cfb9-4eb6-b1f1-7e96195d4042
InstanceOf: MedComCareCommunication
Title: "receive_B-reply"
Description: "receive_B-reply"
* meta.profile[+] = $CareCommunicationCommunication
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:18fa94f2-d40d-46a6-b50d-4086c8e184ad"
* category = $CategoryCodes#examination-results
* topic.text = "Forespørgsel på seneste resultater"
* subject = Reference(0a709ba8-090b-4c03-8040-a23601d0b15a)
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf.\nMed venlig hilsen\nEmma Waters\nSygeplejerske"
* payload[1].extension[date].valueDateTime = 2024-08-12T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:ace97a0b-269f-4c67-a9e6-a5b7f20e160e"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(48038043-9a8c-402e-9828-2bb4f4b74d24)
* payload[1].extension[author].valueReference = Reference(ad8bf8c0-6626-43cf-8d5a-1fa925c3c401) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno.\nPå forhånd tak.\nHilsen Michael Burns\nSygeplejerske"
* payload[0].extension[date].valueDateTime = 2024-08-11T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(46037d39-bd84-4419-b132-fa9d9e9c6134)
* payload[0].extension[author].valueReference = Reference(b86979d0-efb2-4728-a4de-fe2c7cea93fd)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"

// CareCommunication example - new message
Instance: fd770a95-af42-4545-886d-729d7edfa23a
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_B-reply"
Description: "receive_B-reply"
Usage: #inline
* target = Reference(0ebb6284-eb20-45eb-8113-6620d2d08608)
* occurredDateTime = 2024-08-11T12:00:00+02:00
* recorded = 2024-08-11T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(46037d39-bd84-4419-b132-fa9d9e9c6134)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"