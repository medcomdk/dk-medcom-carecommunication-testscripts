RuleSet: variableEncounterResourceIdentifier(type, number)
* variable[+].name = "encounterResourceIdentifier"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).identifier.value"
* variable[=].sourceId = "create-{type}-{number}"

RuleSet: variableMessageHeaderId(type, number) //opdateret
* variable[+].name = "messageHeaderid-{type}-{number}"
* variable[=].expression = "Bundle.entry[0].resource.id"
* variable[=].sourceId = "create-message-{type}-{number}"

RuleSet: variableMessageHeaderIdSetup(type, number) //opdateret
* variable[+].name = "messageHeaderid-{type}-{number}"
* variable[=].expression = "Bundle.entry[0].resource.id"
* variable[=].sourceId = "create-{type}-{number}"

RuleSet: variableBundleid(type, number)
* variable[+].name = "bundleid-{type}-{number}"
* variable[=].expression = "Bundle.id"
* variable[=].sourceId = "create-message-{type}-{number}" 

RuleSet: variableBundleidSetup(type, number)
* variable[+].name = "bundleid-{type}-{number}"
* variable[=].expression = "Bundle.id"
* variable[=].sourceId = "create-{type}-{number}" 

RuleSet: variableCategory(type, number)
* variable[+].name = "category-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).category.coding.code"
* variable[=].sourceId = "create-message-{type}-{number}" 

RuleSet: variableCategorySetup(type, number)
* variable[+].name = "category-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).category.coding.code"
* variable[=].sourceId = "create-{type}-{number}" 

RuleSet: variableTopic(type, number)
* variable[+].name = "topic-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).topic.text"
* variable[=].sourceId = "create-message-{type}-{number}" 

RuleSet: variableTopicSetup(type, number)
* variable[+].name = "topic-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).topic.text"
* variable[=].sourceId = "create-{type}-{number}" 

RuleSet: variableText(type, number)
* variable[+].name = "text-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).payload.content.string"
* variable[=].sourceId = "create-message-{type}-{number}" 

RuleSet: variableTextSetup(type, number)
* variable[+].name = "text-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).payload.content.string"
* variable[=].sourceId = "create-{type}-{number}" 

RuleSet: variablePayloadCount(type, number)
* variable[+].name = "bundleid-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).payload.count()"
* variable[=].sourceId = "create-message-{type}-{number}" 

RuleSet: variableEpisodeOfCareIdentifier(type, number)
* variable[+].name = "episodeOfCareID-{type}-{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).episodeOfCare.identifier.value"
* variable[=].sourceId = "create-{type}-{number}"

/* RuleSet: variableDestinationUri(type, number)
* variable[+].name = "destinationUri-{type}"
* variable[=].expression = "Bundle.id"
* variable[=].sourceId = "create-{type}-{number}" */

RuleSet: variableDestinationUri(type, number)
* variable[+].name = "destinationUri-{type}"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[=].sourceId = "create-{type}-{number}"
 
RuleSet: variableSearchParamIdentifier(type)
* variable[+].name = "searchParamIdentifier-{type}" 
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).id"
* variable[=].sourceId = "create-message-{type}"

RuleSet: variableCorrectMessageID(type, number)
* variable[+].name = "correctMessageID{number}"
* variable[=].expression = "Bundle.entry.resource.ofType(Bundle).id"
* variable[=].sourceId = "bundle-get-{type}{number}"

/* RuleSet: variableOccurredDateTime(type) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "occurredDateTime-{type}"
* variable[=].expression = "Bundle.entry.resource.ofType(Provenance).where(target.reference = %resource.entry[0].fullUrl).occurred"
* variable[=].sourceId = "create-message-{type}" */

RuleSet: variableHospitalSOR(type, number) 
* variable[+].name = "hospitalSOR-{type}"
* variable[=].expression = "Bundle.entry[0].resource.sender.reference.resolve().identifier.where(system = 'urn:oid:1.2.208.176.1.1').value"
* variable[=].sourceId = "create-{type}-{number}"

/* RuleSet: variableHospitalGLN(type) 
* variable[+].name = "hospitalGLN-{type}"
* variable[=].expression = "Bundle.entry[0].resource.sender.reference.resolve().resource.identifier.where(system = 'https://www.gs1.org/gln').value"
* variable[=].sourceId = "create-message-{type}"
 */

/* RuleSet: variableEndpoint(type, number) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "receiverEndpoint"
* variable[=].expression = "Bundle.entry.resource.ofType(MessageHeader).destination.endpoint"
* variable[=].sourceId = "create-{type}-{number}" */

RuleSet: variableEncounterDateTime(type) // skal kun anvendes ved den initielle meddelelse
* variable[+].name = "encounterDateTime-{type}"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).period.start"
* variable[=].sourceId = "create-message-{type}"


RuleSet: variableTimeZone(type) 
* variable[+].name = "encounterTimeZone-{type}"
* variable[=].expression = "Bundle.entry.resource.ofType(Encounter).period.start.substring(19,3)"
* variable[=].sourceId = "create-message-{type}"


RuleSet: variableAttachmentIdentifier(type, number, mimetype)
* variable[+].name = "identifier-{type}-{number}-{mimetype}"
* variable[=].expression = "Bundle.entry.resource.ofType(Communication).payload.where(content.where(contentType = '{mimetype}')).extension.where(url = 'http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-carecommunication-attachment-identifier-extension').value.value"
* variable[=].sourceId = "create-message-{type}-{number}"


