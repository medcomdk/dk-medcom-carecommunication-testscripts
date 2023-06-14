RuleSet: createInitialMessageSetupNotFHIR(type, number, fixture)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {type}, {number})
//* insert dynamicEndpoint({type}, {number})

/* 
Beskriver den profil, der valideres op mod
*/
//* insert profilecarecommunicationMessage

/* 
Beskriver anvendte variable
*/
/* * insert variableMessageHeaderId({type}, {number})
* insert variableDestinationUri({type}, {number})
//* insert variableSearchParamIdentifier({type})
* insert variableBundleidSetup({type}, {number}) */
//* insert variableEndpoint({type}, {number})
/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
//* insert operationDeleteSetup({destinationUri})
* insert operationCreateSetupNotFHIR({type}, {number})
//* insert operationUpdateCreateSetup({type}, {number}, {bundleid})

/* 
Beskriver den vurdering der sker af setup'et. Er det gået ok?
*/
* insert assertResponseCodeSetup