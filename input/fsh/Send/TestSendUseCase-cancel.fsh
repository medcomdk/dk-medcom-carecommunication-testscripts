/* //AN_STAA
Instance: carecommunication_TestScript_AN_STAA
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-an-staa"
* description = "Send: Cancellation Start hospital stay - acute ambulant"
* title = "Send: Cancellation Start hospital stay - acute ambulant - AN_STAA"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-an-staa" 
* name = "carecommunicationTestScript"
* insert createInitialMessage(STAA, 01, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, admit-emergency, EMER, in-progress, true) 
* insert createMessage(AN-STAA, 02, /FHIRSandbox/MedCom/carecommunication/v300/Send/Fixtures/carecommunication-fixture.xml, cancel-admit-emergency, EMER, entered-in-error, removal, messageHeaderid-STAA, 2, episodeOfCareID-STAA)

 */