
RuleSet: assertResponseCodeTest //Vurder om handlingen af testen er udført korrekt. 200 = okay, 201 = created.
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.responseCode = "200,201"
* test[=].action[=].assert.operator = #in
* test[=].action[=].assert.warningOnly = false

RuleSet: assertResponseCodeSetup //Vurder om handlingen af setup'et er udført korrekt. 200 = okay, 201 = created.
* setup[=].action[+].assert.description = "Confirm that the returned HTTP status is okay or created."
* setup[=].action[=].assert.direction = #response
* setup[=].action[=].assert.responseCode = "200,201"
* setup[=].action[=].assert.operator = #in
* setup[=].action[=].assert.warningOnly = false

RuleSet: assertResponseNotFound //kan bruges til at bekræfte, at en meddelelse er slettet
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is not found."
* test[=].action[=].assert.direction = #response
* test[=].action[=].assert.response = #notFound
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.warningOnly = false

RuleSet: assertValidateProfiles
* test[=].action[+].assert.description = "Validates the bundle against http://medcomfhir.dk/ig/carecommunication/ImplementationGuide/dk.fhir.ig.dk-medcom-carecommunication" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.validateProfileId = "carecommunication"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderid(messageHeaderid)
* test[=].action[+].assert.description = "Confirm that the previous MessageHeader.id is identical to Provenance.entity.what" 
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(entity.what.reference.contains('${{messageHeaderid}}')).exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPayload
* test[=].action[+].assert.description = "Confirm that the client request payload contains a Bundle resource type."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.resource = #Bundle
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderEventCoding
* test[=].action[+].assert.description = "Confirm that the request resource contains the expected eventCoding.code."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).event.as(Coding).select(code = 'care-communication-message').allTrue()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceActivityCode(type)
* test[=].action[+].assert.description = "Confirm that the request resource contains the expected activity code."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(activity.coding.code = '{type}').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertEncounterClass(encounterClass)
* test[=].action[+].assert.description = "Confirm that the Encounter class of the request resource is {encounterClass}."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).class.code"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{encounterClass}"
* test[=].action[=].assert.warningOnly = false

/* RuleSet: assertOccurredTimeStamp(occurredDateTime)
* test[=].action[+].assert.description = "Confirm that the Provenance.occurredDateTime in the latest Provenance is after the previous"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference = %resource.entry[0].fullUrl).occurred > ${{occurredDateTime}}"
/* * test[=].action[=].assert.operator = #greaterThan
* test[=].action[=].assert.value = "{occurredDateTime}" 
* test[=].action[=].assert.warningOnly = false         */                      

RuleSet: assertEncounterStatus(encounterStatus)
* test[=].action[+].assert.description = "Confirm that the Encounter status of the request resource is {encounterStatus}."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).status"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{encounterStatus}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderReportOfAdmission(reportOfAdmission)
* test[=].action[+].assert.description = "Confirm that the report of admission flag is {reportOfAdmission}."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).extension.where(url='http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-messaging-reportOfAdmissionExtension').value"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{reportOfAdmission}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertMessageHeaderReportOfAdmissionReceiver(reportOfAdmission)
* test[=].action[+].assert.description = "Confirm that the a receiver of the report of admission exists, when the flag is true, and doesn't exists when the flag is false."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).extension.where(url='http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-messaging-reportOfAdmissionRecipientExtension').exists() = {reportOfAdmission}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceTarget
* test[=].action[+].assert.description = "Confirm that the target reference in Provenance equals MessageHeader.id"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference.contains(%resource.entry[0].resource.id)).exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertProvenanceEntityCount(noProvenances)
* test[=].action[+].assert.description = "Confirm that the {noProvenances} Provenance instances exists."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).count()"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{noProvenances}"
* test[=].action[=].assert.warningOnly = false 

RuleSet: assertProvenanceEntityRole(role)
* test[=].action[+].assert.description = "Confirm that the role is set to {role}. Not used when testing the first message in a stream"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Provenance).entity.where(role = '{role}').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPatientDeceased(deceased)
* test[=].action[+].assert.description = "Confirm that the Patient.deceased is set to {deceased}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).deceased"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{deceased}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPatientIdentifier(system)
* test[=].action[+].assert.description = "Confirm that the system of the patient.identifier is {system}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).identifier.system"
* test[=].action[=].assert.operator = #equals
* test[=].action[=].assert.value = "{system}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPatientIdentifierDiff(system)
* test[=].action[+].assert.description = "Confirm that the system of the patient.identifier is {system}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).identifier.system != '{system}'"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertEpisodeOfCareID(episodeOfCareID)
* test[=].action[+].assert.description = "Confirm that the episodeOfCare-identifier is {episodeOfCareID}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).where(episodeOfCare.identifier.value = '${{episodeOfCareID}}').count() = 1"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertStructureEpisodeOfCareID
* test[=].action[+].assert.description = "Confirm that the episodeOfCare-identifier has the structure of an UUID"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).episodeOfCare.identifier.value.matches('^[0-9(a-f|A-F)]{8}-[0-9(a-f|A-F)]{4}-4[0-9(a-f|A-F)]{3}-[89ab][0-9(a-f|A-F)]{3}-[0-9(a-f|A-F)]{12}$') or Bundle.entry.resource.ofType(Encounter).episodeOfCare.identifier.system = 'https://www.esundhed.dk/Registre/Landspatientregisteret'"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertSenderSOR(hospitalSOR)
* test[=].action[+].assert.description = "Confirm that the sender SOR number is different from the previous message."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry[0].resource.sender.reference.resolve().identifier.where(system = 'urn:oid:1.2.208.176.1.1').value != ${{hospitalSOR}})"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertReceiverSOR(receiverSOR)
* test[=].action[+].assert.description = "Confirm that the receiver SOR-id is {receiverSOR}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).destination.receiver.reference.resolve().identifier.where(system = 'urn:oid:1.2.208.176.1.1').value = '{receiverSOR}'"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertReceiverEAN(receiverEAN)
* test[=].action[+].assert.description = "Confirm that the receiver EAN-number is {receiverEAN}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).destination.receiver.reference.resolve().identifier.where(system = 'https://www.gs1.org/gln').value = '{receiverEAN}'"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertCommunicationStatus(status)
* test[=].action[+].assert.description = "Confirm that the value in Communication.status is {status}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).status = '{status}'"
* test[=].action[=].assert.warningOnly = false
/* 
RuleSet: assertSenderGLN(hospitalGLN)
* test[=].action[+].assert.description = "Confirm that the sender SOR number is different from the previous message."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.where(fullUrl = %resource.entry.resource[0].sender.reference).resource.identifier.where(system = 'https://www.gs1.org/gln').value != ${{hospitalGLN}}"
* test[=].action[=].assert.warningOnly = true */


RuleSet: assertCompareTimeZone(encounterTimeZone)
* test[=].action[+].assert.description = "Confirm that Encounter.period.start and Encounter.period.end has different timezones."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.end.(substring(19,3) = '${{encounterTimeZone}}').exists().not"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertEncounterLeapYear
* test[=].action[+].assert.description = "Confirm that Encounter.period.start is on the 29th of Febuary 2024."
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Encounter).period.start.contains('2024-02-29')"
* test[=].action[=].assert.warningOnly = false

/* RuleSet: assertPatientIdentifier(patientID)
* test[=].action[+].assert.description = "Confirm that the patient.deceased is set to {deceased}"
* test[=].action[=].assert.direction = #request
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Patient).identifier.value"
* test[=].action[=].assert.operator = #notFound
* test[=].action[=].assert.value = "{deceased}"
* test[=].action[=].assert.warningOnly = false */

RuleSet: assertMimetype(mimetype)
* test[=].action[+].assert.description = "Confirm that an attachment of the type '{mimetype}' is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.content.where(contentType = '{mimetype}').data.exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertAttachmentCount
* test[=].action[+].assert.description = "Confirm that multiple attachments are included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.content.data.count() > 1"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertAttachmentExactCount(noAttachments)
* test[=].action[+].assert.description = "Confirm that {noAttachments} attachments are included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.content.data.count() = {noAttachments}"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertAttachmentCreationTime
* test[=].action[+].assert.description = "Confirm that creation time for the attachment is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.content.creation.exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertCommunicationIdentifier
* test[=].action[+].assert.description = "Confirm that the Communication.identifier is a UUID v4."
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).identifier.value.matches('urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertAttachmentURL
* test[=].action[+].assert.description = "Confirm that an attachment with a link is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.content.url.exists()"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertTopicIncluded
* test[=].action[+].assert.description = "Confirm that the topic is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).topic.exists()"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertCategory(category)
* test[=].action[+].assert.description = "Confirm that the category is '{category}'"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).category.coding.code = '{category}'"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertContentChanged(info1, info2)
* test[=].action[+].assert.description = "Confirm that the content is different in the two messages"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "'${{info1}}' != '${{info2}}'"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertContentAlike(info1, info2)
* test[=].action[+].assert.description = "Confirm that the content is the same in the two messages"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "'${{info1}}' = '${{info2}}'"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertPriorityExists
* test[=].action[+].assert.description = "Confirm that priority exists"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).priority.exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertSenderExists
* test[=].action[+].assert.description = "Confirm that a specific sender is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).extension.where(url = 'http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-carecommunication-sender-extension').exists()"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertOrganisationIdentifier(orgsystem, orgid)
* test[=].action[+].assert.description = "Confirm that the Organization identifier, with system = {orgsystem}, is {orgid}"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(MessageHeader).destination.receiver.reference.resolve().identifier.where(system = '{orgsystem}').value = '{orgid}'"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertStructuredSignatur 
* test[=].action[+].assert.description = "Confirm that structured author information is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.where(content.data.exists()).extention(url = 'http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-carecommunication-author-extension')"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertXHTMLCheck
* test[=].action[+].assert.description = "Confirm that content of the message text conforms to XHTML"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.content.htmlChecks()"
* test[=].action[=].assert.warningOnly = false
 
RuleSet: assertRecipientExists
* test[=].action[+].assert.description = "Confirm that a specific recipient is included"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).recipient.exists()"
* test[=].action[=].assert.warningOnly = false


RuleSet: assertPayloadCount(noCommunicationPayloads)
* test[=].action[+].assert.description = "Confirm that number of payloads is '{noCommunicationPayloads}'"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).payload.count() = '{noCommunicationPayloads}'"
* test[=].action[=].assert.warningOnly = false

RuleSet: assertCommunications(noCommunications)
* test[=].action[+].assert.description = "Confirm that number of Communication instances is '{noCommunications}'"
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).count() = '{noCommunications}'"
* test[=].action[=].assert.warningOnly = false



RuleSet: assertCancallationReason(status, reason)
* test[=].action[+].assert.description = "Confirm that the reason for cancellation is '{reason}'. Only gives a warning is false."
* test[=].action[=].assert.direction = #request 
* test[=].action[=].assert.expression = "Bundle.entry.resource.ofType(Communication).where(status = '{status}').payload.content = '{reason}'"
* test[=].action[=].assert.warningOnly = true