/* //Get RE-STIN
Instance: carecommunication_TestScript_receive-RE-STIN
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-re-stin"
* description = "Receive: Update Start hospital stay"
* title = "Receive: Update Start hospital stay - RE_STIN"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-re-stin" 
* name = "carecommunicationTestScript"
// Fixturen indeholder en placeholder ved MessageHeader.destination.endpoint.
* insert createInitialMessageSetup(STIN, 01, /FHIRSandbox/MedCom/carecommunication/v300/Receive/Fixtures/carecommunication-fixture-STIN.xml, destinationUri-STIN)
* insert createMessageSetup(RE-STIN, 02, /FHIRSandbox/MedCom/carecommunication/v300/Receive/Fixtures/carecommunication-fixture-RE-STIN.xml, destinationUri-RE-STIN)
* insert readMessage(STIN, 01, destinationUri-STIN, bundleid-STIN)
* insert readMessage(RE-STIN, 02, destinationUri-RE-STIN, bundleid-RE-STIN)

 */