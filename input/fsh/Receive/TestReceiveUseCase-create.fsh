/* //Get STIN
Instance: carecommunication_TestScript_receive-STIN-A1
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-stin-a1"
* description = "Receive: Start hospital stay - admitted, without request for reportOfAdmission"
* title = "Receive: Start hospital stay - admitted, without request for reportOfAdmission - STIN"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-stin-a1" 
* name = "carecommunicationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/carecommunication/v300/Receive/Fixtures/carecommunication-fixture-STIN-A1.xml, destinationUri-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
 */