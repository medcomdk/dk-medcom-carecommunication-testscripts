/* //STIN.A1
Instance: carecommunication_TestScript_STIN-A1
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-stin-a1"
* description = "Send: Start hospital stay - admitted, without request for a reportOfAdmission."
* title = "Send: Start hospital stay - admitted - STIN.A1"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-stin-a1" 
* name = "carecommunicationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, admit-inpatient, IMP, in-progress, false) 
 */