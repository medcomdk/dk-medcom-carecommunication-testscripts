/*  //PF-send-imp-01 - STIN-STOR-SLOR-SLHJ
Instance: carecommunication_TestScript_PF-send-imp-01
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-PF-send-imp-01"
* description = "Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient."
* title = "Send: Admit patient, register patient as being on leave, register patient as returned from leave, discharge patient. - PF-send-imp-01"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-PF-send-imp-01" 
* name = "carecommunicationTestScript"
* insert createInitialMessage(STIN, 01, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, admit-inpatient, IMP, in-progress, true)
* insert createMessage(STOR, 02, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, start-leave-inpatient, IMP, onleave, revision, messageHeaderid-STIN, 2, episodeOfCareID-STIN)
* insert createMessage(SLOR, 03, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, end-leave-inpatient, IMP, in-progress, revision, messageHeaderid-STOR, 3, episodeOfCareID-STOR)
* insert createMessage(SLHJ, 04, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, discharge-patient-home, IMP, finished, revision, messageHeaderid-SLOR, 4, episodeOfCareID-SLOR)
 */