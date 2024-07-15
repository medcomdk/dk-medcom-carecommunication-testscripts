RuleSet: createMessageSetup(type and number and fixture and bundleid)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture} and {type} and {number})
//* insert dynamicEndpoint({type} and {number})

* insert profilecarecommunicationMessage

/* 
Beskriver anvendte variable
*/
//* insert variableMessageHeaderId({type})
* insert variableDestinationUri({type} and {number})
//* insert variableSearchParamIdentifier({type})
* insert variableBundleidSetup({type} and {number})
//* insert variableEndpoint({type} and {number})
* insert variableMessageHeaderIdSetup({type} and {number})

/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
* insert operationCreateSetup({type} and {number})
* insert operationUpdateCreateSetup({type} and {number} and {bundleid})

/* 
Beskriver den vurdering der sker af setup'et. Er det gået ok?
*/
* insert assertResponseCodeSetup