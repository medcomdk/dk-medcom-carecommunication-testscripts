RuleSet: readMessage(type and number and bundleid)

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
Beskriver de operationer der udføres i denne test. Her er det kun setup operationer
*/
* insert operationReadMessage({type} and {number} and {bundleid})

/* 
Beskriver den vurdering der sker af testen. Er det gået ok?
*/
* insert assertResponseCodeTest

