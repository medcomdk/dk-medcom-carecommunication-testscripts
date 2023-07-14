//new message
Instance: CareCommunication_TestScript_send-new-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-message"
* description = "Send CareCommunication"
* title = "Send CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment"
* description = "Send CareCommunication with attached files. One attachment of each mimetype is exected."
* title = "Send CareCommunication with attached files. One attachment of each mimetype is exected."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)

//new topic
Instance: CareCommunication_TestScript_send-new-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-topic"
* description = "Send CareCommunication with topic"
* title = "Send CareCommunication with topic."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertTopicIncluded

//new formatted-text
Instance: CareCommunication_TestScript_send-new-formatted-text
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-formatted-text"
* description = "Send CareCommunication with formatted text and table"
* title = "Send CareCommunication with formatted text and table"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-formatted-text" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertXHTMLCheck

//new category-other
Instance: CareCommunication_TestScript_send-new-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-category-other"
* description = "Send CareCommunication with category 'Other'"
* title = "Send CareCommunication with category 'Other'"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertCategory(other)
* insert assertTopicIncluded

//new priority
Instance: CareCommunication_TestScript_send-new-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-priority"
* description = "Send CareCommunication with category 'Regarding referral' and included priority"
* title = "Send CareCommunication with category 'Regarding referral' and included priority"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertCategory(regarding-referral)
* insert assertPriorityExists


//Reply message
Instance: CareCommunication_TestScript_send-reply-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-message"
* description = "Reply CareCommunication"
* title = "Reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 

//Reply attachment
Instance: CareCommunication_TestScript_send-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-attachment"
* description = "Reply CareCommunication with attached files. One attachment of each mimetype is exected."
* title = "Reply CareCommunication with attached files. One attachment of each mimetype is exected."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 7) 
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)

//Reply  with changed category
Instance: CareCommunication_TestScript_send-reply-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-changecategory"
* description = "Reply CareCommunication with changed category"
* title = "Reply CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(reply-message, 02)
* insert assertContentChanged(category-new-message-01, category-reply-message-02)


//Reply  with changed topic
Instance: CareCommunication_TestScript_send-reply-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-changetopic"
* description = "Reply CareCommunication with changed topic"
* title = "Reply CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableTopicSetup(new-message, 01)
* insert variableTopic(reply-message, 02)
* insert assertContentChanged(topic-new-message-01, topic-reply-message-02)

/*  //Reply  with changed topic
Instance: CareCommunication_TestScript_send-reply-oioxmlmessage
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-oioxmlmessage"
* description = "Reply to OIOXML"
* title = "Reply to OIOXML"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-oioxmlmessage" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetupNotFHIR(oioxml, 01, /Fixtures/CareCommunication-fixture-oioxml.xml)
// * insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2)  */


//Forward message
Instance: CareCommunication_TestScript_send-forward-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-message"
* description = "Forward CareCommunication"
* title = "Forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message)

//Forward message
Instance: CareCommunication_TestScript_send-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-attachment"
* description = "Forward CareCommunication with attached files. One attachment of each mimetype is exected."
* title = "Forward CareCommunication with attached files. One attachment of each mimetype is exected."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 7) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)


//Forward changecategory
Instance: CareCommunication_TestScript_send-forward-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-changecategory"
* description = "Forward CareCommunication with changed category"
* title = "Forward CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(forward-message, 02)
* insert assertContentChanged(category-new-message-01, category-forward-message-02)

//Forward changetopic
Instance: CareCommunication_TestScript_send-forward-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-changetopic"
* description = "Forward CareCommunication with changed topic"
* title = "Forward CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert variableTopicSetup(new-message, 01)
* insert variableTopic(forward-message, 02)
* insert assertContentChanged(topic-new-message-01, topic-forward-message-02)

//Forward partialthread
Instance: CareCommunication_TestScript_send-forward-partialthread
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-partialthread"
* description = "Forward a part of the CareCommunication thread. Only the reply-message is expected to be forwarded."
* title = "Forward a part of the CareCommunication thread. Only the reply-message is expected to be forwarded."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-partialthread" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(reply-message, 01, /Fixtures/CareCommunication-fixture-reply-message.xml, destinationUri-reply-message, bundleid-reply-message-01)
* insert readMessage(reply-message, 01, bundleid-reply-message-01)
* insert variableHospitalSOR(reply-message, 01) 
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-reply-message)
