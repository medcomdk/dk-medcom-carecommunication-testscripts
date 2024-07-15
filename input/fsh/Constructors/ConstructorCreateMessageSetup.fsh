RuleSet: createMessageSetup(type, number, fixture, bundleid)

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

* insert profilecarecommunicationMessage

/* 
Beskriver anvendte variable
*/
//* insert variableMessageHeaderId({type})
* insert variableDestinationUri({type}, {number})
//* insert variableSearchParamIdentifier({type})
* insert variableBundleidSetup({type}, {number})
//* insert variableEndpoint({type}, {number})
* insert variableMessageHeaderIdSetup({type}, {number})

/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
* insert operationCreateSetup({type}, {number})
* insert operationUpdateCreateSetup({type}, {number}, {bundleid})

/* 
Beskriver den vurdering der sker af setup'et. Er det gået ok?
*/
* insert assertResponseCodeSetup