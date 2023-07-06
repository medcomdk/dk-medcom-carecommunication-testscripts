//Get modify-new
Instance: CareCommunication_TestScript_receive-modify-new-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-new-message"
* description = "Receive correction of a new CareCommunication"
* title = "Receive correction of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-new-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(modify-message, 02, ../Fixtures/CareCommunication-fixture-modify-new-message.xml, bundleid-modify-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(modify-message, 02, bundleid-modify-message-02)

//Get modify-new-attachment
Instance: CareCommunication_TestScript_receive-modify-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-new-attachment"
* description = "Receive correction of a new CareCommunication with attached files"
* title = "Receive correction of a new CareCommunication with attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(modify-message, 02, ../Fixtures/CareCommunication-fixture-modify-new-attachment.xml, bundleid-modify-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(modify-message, 02, bundleid-modify-message-02)

//Get modify-new-topic
Instance: CareCommunication_TestScript_receive-modify-new-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-new-topic"
* description = "Receive correction of a new CareCommunication with topic"
* title = "Receive correction of a new CareCommunication with topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-new-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(modify-message, 02, ../Fixtures/CareCommunication-fixture-modify-new-topic.xml, bundleid-modify-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(modify-message, 02, bundleid-modify-message-02)


//Get modify-new-category-other
Instance: CareCommunication_TestScript_receive-modify-new-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-new-category-other"
* description = "Receive correction of a new CareCommunication with formatted with category 'Other'"
* title = "Receive correction of a new CareCommunication with formatted with category 'Other'"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-new-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(modify-message, 02, ../Fixtures/CareCommunication-fixture-modify-new-category-other.xml, bundleid-modify-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(modify-message, 02, bundleid-modify-message-02)

//Get modify-new-priority
Instance: CareCommunication_TestScript_receive-modify-new-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-new-priority"
* description = "Receive correction of a new CareCommunication with category 'Regarding referral' and included priority"
* title = "Receive correction of a new CareCommunication with category 'Regarding referral' and included priority"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-new-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(modify-message, 02, ../Fixtures/CareCommunication-fixture-modify-new-priority.xml, bundleid-modify-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(modify-message, 02, bundleid-modify-message-02)


//Get modify-reply-message
Instance: CareCommunication_TestScript_receive-modify-reply-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-reply-message"
* description = "Receive correction of a reply to CareCommunication"
* title = "Receive correction of a reply to CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-reply-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, ../Fixtures/CareCommunication-fixture-reply-message.xml, bundleid-reply-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-reply-message.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)


//Get modify-reply-attachment
Instance: CareCommunication_TestScript_receive-modify-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-reply-attachment"
* description = "Receive correction of a reply to CareCommunication with attached files"
* title = "Receive correction of a reply to CareCommunication with attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, ../Fixtures/CareCommunication-fixture-reply-message.xml, bundleid-reply-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-reply-attachment.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)

//Get modify-reply-changecategory
Instance: CareCommunication_TestScript_receive-modify-reply-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-reply-changecategory"
* description = "Receive correction of a reply to CareCommunication with changed category"
* title = "Receive correction of a reply to CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-reply-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, ../Fixtures/CareCommunication-fixture-reply-message.xml, bundleid-reply-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-reply-changecategory.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)

//Get modify-reply-changetopic
Instance: CareCommunication_TestScript_receive-modify-reply-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-reply-changetopic"
* description = "Receive correction of a reply to CareCommunication with changed topic"
* title = "Receive correction of a reply to CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-reply-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(reply-message, 02, ../Fixtures/CareCommunication-fixture-reply-message.xml, bundleid-reply-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-reply-changetopic.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(reply-message, 02, bundleid-reply-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)


//Get modify-forward-message
Instance: CareCommunication_TestScript_receive-modify-forward-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-forward-message"
* description = "Receive correction of a forward of CareCommunication"
* title = "Receive correction of a forward of CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-forward-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(forward-message, 02, ../Fixtures/CareCommunication-fixture-forward-message.xml, bundleid-forward-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-forward-message.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(forward-message, 02, bundleid-forward-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)

//Get modify-forward-attachment
Instance: CareCommunication_TestScript_receive-modify-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-forward-attachment"
* description = "Receive correction of a forward of CareCommunication with attached files"
* title = "Receive correction of a forward of CareCommunication with attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(forward-message, 02, ../Fixtures/CareCommunication-fixture-forward-message.xml, bundleid-forward-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-forward-attachment.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(forward-message, 02, bundleid-forward-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)

//Get modify-forward-changecategory
Instance: CareCommunication_TestScript_receive-modify-forward-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-forward-changecategory"
* description = "Receive correction of a forward of CareCommunication with changed category"
* title = "Receive correction of a forward of CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-forward-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(forward-message, 02, ../Fixtures/CareCommunication-fixture-forward-message.xml, bundleid-forward-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-forward-changecategory.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(forward-message, 02, bundleid-forward-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)

//Get modify-forward-changetopic
Instance: CareCommunication_TestScript_receive-modify-forward-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-modify-forward-changetopic"
* description = "Receive correction of a forward of CareCommunication with changed topic"
* title = "Receive correction of a forward of CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-modify-forward-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(forward-message, 02, ../Fixtures/CareCommunication-fixture-forward-message.xml, bundleid-forward-message-02)
* insert createMessageSetup(modify-message, 03, ../Fixtures/CareCommunication-fixture-modify-forward-changetopic.xml, bundleid-modify-message-03)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(forward-message, 02, bundleid-forward-message-02)
* insert readMessage(modify-message, 03, bundleid-modify-message-03)