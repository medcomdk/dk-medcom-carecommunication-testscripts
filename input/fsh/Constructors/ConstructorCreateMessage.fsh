RuleSet: createMessage(type and number and fixture and role and messageHeaderid and noProvenances and noCommunicationPayloads)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture} and {type} and {number})

/* 
Beskriver den profil and der valideres op mod
*/
* insert profilecarecommunicationMessage

/* 
Beskriver anvendte variable
*/
//* insert variableEncounterResourceIdentifier({type} and {number})
* insert variableMessageHeaderId({type} and {number})
//* insert variableEpisodeOfCareIdentifier({type})
//* insert variableSearchParamIdentifier({type})
/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({type} and {number})

/* 
Beskriver den vurdering der sker af operationen.
*/
* insert assertValidateProfiles
* insert assertResponseCodeTest
* insert assertPayload
* insert assertMessageHeaderid({messageHeaderid})
* insert assertMessageHeaderEventCoding
* insert assertProvenanceEntityRole({role})
* insert assertProvenanceTarget
* insert assertProvenanceEntityCount({noProvenances})
* insert assertPayloadCount({noCommunicationPayloads})
