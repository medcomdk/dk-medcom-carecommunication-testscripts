RuleSet: createMessageSetup(responseCode, number, fixture, bundleid)

/* 
Beskriver server og client for dette testsetup
*/
* insert originClient
* insert destinationServer

/* 
Beskriver anvendte fixtures
*/
* insert fixtureCreateMessage({fixture}, {responseCode}, {number})
//* insert dynamicEndpoint({responseCode}, {number})

/* 
Beskriver anvendte variable
*/
//* insert variableMessageHeaderId({responseCode})
* insert variableDestinationUri({responseCode}, {number})
//* insert variableSearchParamIdentifier({responseCode})
* insert variableBundleidSetup({responseCode}, {number})
//* insert variableEndpoint({responseCode}, {number})
* insert variableMessageHeaderIdSetup({responseCode}, {number})

/* 
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
* insert operationCreateSetup({responseCode}, {number})
* insert operationUpdateCreateSetup({responseCode}, {number}, {bundleid})

/* 
Beskriver den vurdering der sker af setup'et. Er det gået ok?
*/
* insert assertResponseCodeSetup