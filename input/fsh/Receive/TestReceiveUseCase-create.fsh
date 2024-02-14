/* //Get new
Instance: CareCommunication_TestScript_receive-new-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-new-message"
* description = "Receive new CareCommunication"
* title = "Receive new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-new-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get new-attachment
Instance: CareCommunication_TestScript_receive-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-new-attachment"
* description = "Receive new CareCommunication with attached files"
* title = "Receive new CareCommunication with attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-attachment.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get new-topic
Instance: CareCommunication_TestScript_receive-new-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-new-topic"
* description = "Receive new CareCommunication with topic"
* title = "Receive new CareCommunication with topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-new-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-topic.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get new-formatted-text
Instance: CareCommunication_TestScript_receive-new-formatted-text
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-new-formatted-text"
* description = "Receive new CareCommunication with formatted text and table"
* title = "Receive new CareCommunication with formatted text and table"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-new-formatted-text" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-formatted-text.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get new-category-other
Instance: CareCommunication_TestScript_receive-new-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-new-category-other"
* description = "Receive new CareCommunication with category 'Other'"
* title = "Receive new CareCommunication with category 'Other'"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-new-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-category-other.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get new-priority
Instance: CareCommunication_TestScript_receive-new-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-new-priority"
* description = "Receive new CareCommunication with category 'Regarding referral' and included priority"
* title = "Receive new CareCommunication with category 'Regarding referral' and included priority"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-new-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-priority.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get reply-message
Instance: CareCommunication_TestScript_receive-reply-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-reply-message"
* description = "Receive reply to CareCommunication"
* title = "Receive reply to CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-reply-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, /Fixtures/CareCommunication-fixture-reply-message.xml, bundleid-reply-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)

//Get reply-attachment
Instance: CareCommunication_TestScript_receive-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-reply-attachment"
* description = "Receive reply to CareCommunication with attached files"
* title = "Receive reply to CareCommunication with attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, /Fixtures/CareCommunication-fixture-reply-attachment.xml, bundleid-reply-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)

//Get reply-changecategory
Instance: CareCommunication_TestScript_receive-reply-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-reply-changecategory"
* description = "Receive reply to CareCommunication with changed category"
* title = "Receive reply to CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-reply-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, /Fixtures/CareCommunication-fixture-reply-changecategory.xml, bundleid-reply-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)

//Get reply-changetopic
Instance: CareCommunication_TestScript_receive-reply-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-reply-changetopic"
* description = "Receive reply to CareCommunication with changed topic"
* title = "Receive reply to CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-reply-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, /Fixtures/CareCommunication-fixture-reply-changetopic.xml, bundleid-reply-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)

//Get forward-message
Instance: CareCommunication_TestScript_receive-forward-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-forward-message"
* description = "Receive forward to CareCommunication"
* title = "Receive forward to CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-forward-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(forward-message, 01, /Fixtures/CareCommunication-fixture-forward-message.xml, destinationUri-forward-message, bundleid-forward-message-01)
* insert readMessage(forward-message, 01, bundleid-forward-message-01)

//Get forward-attachment
Instance: CareCommunication_TestScript_receive-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-forward-attachment"
* description = "Receive forward of CareCommunication with attached files"
* title = "Receive forward of CareCommunication with attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(forward-message, 01, /Fixtures/CareCommunication-fixture-forward-attachment.xml, destinationUri-forward-message, bundleid-forward-message-01)
* insert readMessage(forward-message, 01, bundleid-forward-message-01)

//Get forward-topic
Instance: CareCommunication_TestScript_receive-forward-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-forward-topic"
* description = "Receive forward of CareCommunication with topic"
* title = "Receive forward of CareCommunication with topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-forward-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(forward-message, 01, /Fixtures/CareCommunication-fixture-forward-topic.xml, destinationUri-forward-message, bundleid-forward-message-01)
* insert readMessage(forward-message, 01, bundleid-forward-message-01)

 */