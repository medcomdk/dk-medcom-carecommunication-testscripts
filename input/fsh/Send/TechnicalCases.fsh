
//tec-10
/*Instance: CareCommunication_TestScript_send-tec-01
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-01"
* description = " Send CareCommunication concerning a deceased patient"
* title = " Send CareCommunication concerning a deceased patient"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-01" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml)
* insert assertPatientDeceased(true)
/**/

//tec-01
Instance: CareCommunication_TestScript_send-tec-01
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-01"
* description = "Reply to CareCommunication, that includes all content, with a message segment only."
* title = "Reply to CareCommunication, that includes all content, with a message segment only."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-01" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message-all.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 4)
* insert assertEpisodeOfCareID(episodeOfCareID-new-message-01)
* insert variableEpisodeOfCareIdentifier(new-message, 01)

Instance: CareCommunication_TestScript_send-tec-02
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-02"
* description = "Send CareCommunication with sender and recipient"
* title = "Send CareCommunication with sender and recipient"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-02" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertSenderExists
* insert assertRecipientExists

Instance: CareCommunication_TestScript_send-tec-03
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-03"
* description = "Send CareCommunication where the patient has a CPR-number as identifier"
* title = "Send CareCommunication where the patient has a CPR-number as identifier"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-03" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertPatientIdentifier(urn:oid:1.2.208.176.1.2)

Instance: CareCommunication_TestScript_send-tec-04
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-04"
* description = "Send CareCommunication where the patient has a replacement-CPR-number as identifier"
* title = "Send CareCommunication where the patient has a replacement-CPR-number as identifier"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-04" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertPatientIdentifierDiff(urn:oid:1.2.208.176.1.2)

//tec-05
Instance: CareCommunication_TestScript_send-tec-05
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-05"
* description = "Send CareCommunication with a episodeOfCare-identifier"
* title = "Send CareCommunication with a episodeOfCare-identifier"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-05" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertStructureEpisodeOfCareID

//tec-06
Instance: CareCommunication_TestScript_send-tec-06
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-06"
* description = "Reply to CareCommunication, where episodeOfCare-identifier is correctly transfered in the communication"
* title = "Reply to CareCommunication, where episodeOfCare-identifier is correctly transfered in the communication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-06" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message-all.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2)
* insert assertEpisodeOfCareID(episodeOfCareID-new-message-01)
* insert variableEpisodeOfCareIdentifier(new-message, 01)


/* 	
//tec-02
Instance: CareCommunication_TestScript_send-tec-02A
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-02A"
* description = "Send CareCommunication, where the receive is 'Plejecenter Herlev' with GLN-number '5790001348120'"
* title = "Send CareCommunication, where the receive is 'Plejecenter Herlev' with GLN-number '5790001348120'"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-02A" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml)
* insert assertOrganisationIdentifier(https://www.gs1.org/gln, 5790001348120) 
* insert assertOrganisationIdentifier(urn:oid:1.2.208.176.1.1, 953741000016009) 



//tec-03
Instance: CareCommunication_TestScript_send-tec-03
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-03"
* description = "Send CareCommunication with the maximum length in the text of the message segment"
* title = "Send CareCommunication with the maximum length in the text of the message segment"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-03" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml)
// miss the assert of maxsize 

//tec-04
Instance: CareCommunication_TestScript_send-tec-04A
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-04A"
* description = "Send CareCommunication with attachment, an associated structured signature"
* title = "Send CareCommunication with attachment, an associated structured signature"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-04A" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertStructuredSignatur



//tec-07
Instance: CareCommunication_TestScript_send-tec-07
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-07"
* description = "Cancel CareCommunication which has already been corrected. Expected to cancel the entire thread."
* title = "Cancel CareCommunication which has already been corrected. Expected to cancel the entire thread."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-07" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, removal, messageHeaderid-modified-message-02, 3, 3) 


//tec-08
Instance: CareCommunication_TestScript_send-tec-08
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-08"
* description = "Send CareCommunication, send CareCommunication as the first wasn't acknowledged"
* title = "Send CareCommunication, send CareCommunication as the first wasn't acknowledged"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-08" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(new-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 1, 1)

//tec-09
Instance: CareCommunication_TestScript_send-tec-09
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-tec-09"
* description = "Send CareCommunication, including a messagesegment as a URL to a website"
* title = "Send CareCommunication, including a messagesegment as a URL to a website"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-tec-09" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml)
* insert assertAttachmentURL



*/
