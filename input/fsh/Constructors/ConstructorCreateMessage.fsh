RuleSet: createMessage(type, number, fixture, role, messageHeaderid, noProvenances, noCommunicationPayloads)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {type}, {number})

/* 
Beskriver den profil, der valideres op mod
*/
* insert profilecarecommunicationMessage

/* 
Beskriver anvendte variable
*/
//* insert variableEncounterResourceIdentifier({type}, {number})
* insert variableMessageHeaderId({type}, {number})
//* insert variableEpisodeOfCareIdentifier({type})
//* insert variableSearchParamIdentifier({type})
/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({type}, {number})

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
