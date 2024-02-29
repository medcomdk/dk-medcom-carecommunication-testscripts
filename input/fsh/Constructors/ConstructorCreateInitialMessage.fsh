RuleSet: createInitialMessage(type, number, fixture)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil, der valideres op mod
*/
* insert profilecarecommunicationMessage

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {type}, {number})

/* 
Beskriver anvendte variable
*/ 
//* insert variableEncounterResourceIdentifier({type}, {number})
* insert variableMessageHeaderId({type}, {number})
* insert variableSearchParamIdentifier({type})
/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({type}, {number})

/* 
Beskriver den vurdering der sker af operationen
*/
* insert assertValidateProfiles
* insert assertResponseCodeTest
* insert assertPayload
* insert assertMessageHeaderEventCoding
* insert assertProvenanceActivityCode({type})
* insert assertProvenanceTarget

