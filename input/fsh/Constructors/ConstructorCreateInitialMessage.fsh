RuleSet: createInitialMessage(type and number and fixture)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver den profil and der valideres op mod
*/
* insert profilecarecommunicationMessage

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture} and {type} and {number})

/* 
Beskriver anvendte variable
*/ 
//* insert variableEncounterResourceIdentifier({type} and {number})
* insert variableMessageHeaderId({type} and {number})
* insert variableSearchParamIdentifier({type})
/* 
Beskriver den operation der udføres i denne test.
*/
* insert operationCreateMessage({type} and {number})

/* 
Beskriver den vurdering der sker af operationen
*/
* insert assertValidateProfiles
* insert assertResponseCodeTest
* insert assertPayload
* insert assertMessageHeaderEventCoding
* insert assertProvenanceActivityCode({type})
* insert assertProvenanceTarget
