/* //Get AN-STIN
Instance: carecommunication_TestScript_receive-AN-STIN
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-an-stin"
* description = "Receive: Cancellation Start hospital stay"
* title = "Receive: Cancellation Start hospital stay - AN-STIN"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-an-stin" 
* name = "carecommunicationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/carecommunication/v300/Receive/Fixtures/carecommunication-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(AN-STIN, 02, /FHIRSandbox/MedCom/carecommunication/v300/Receive/Fixtures/carecommunication-fixture-AN-STIN.xml, destinationUri-AN-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(AN-STIN, 02, destinationUri-AN-STIN, bundleid-AN-STIN)
 */