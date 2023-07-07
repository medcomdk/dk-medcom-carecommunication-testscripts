//Get cancel-new-cpr
Instance: CareCommunication_TestScript_receive-retract-new-cpr
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-new-cpr"
* description = "Receive cancellation of CareCommunication due to incorrect CPR-number"
* title = "Receive cancellation of CareCommunication due to incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-new-cpr" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-new-cpr.xml, bundleid-retract-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-new-receiver
Instance: CareCommunication_TestScript_receive-retract-new-receiver
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-new-receiver"
* description = "Receive cancellation of CareCommunication due to incorrect receiver"
* title = "Receive cancellation of CareCommunication due to incorrect receiver"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-new-receiver" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-new-receiver.xml, bundleid-retract-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-new-attachment
Instance: CareCommunication_TestScript_receive-retract-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-new-attachment"
* description = "Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number"
* title = "Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-new-attachment.xml, bundleid-retract-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)


//Get cancel-reply-cpr
Instance: CareCommunication_TestScript_receive-retract-reply-cpr
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-reply-cpr"
* description = "Receive cancellation of CareCommunication due to incorrect CPR-number"
* title = "Receive cancellation of CareCommunication due to incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-reply-cpr" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(reply-message, 01, /Fixtures/CareCommunication-fixture-reply-message.xml, destinationUri-reply-message, bundleid-reply-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-reply-cpr.xml, bundleid-retract-message-02)
* insert readMessage(reply-message, 01, bundleid-reply-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-reply-receiver
Instance: CareCommunication_TestScript_receive-retract-reply-receiver
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-reply-receiver"
* description = "Receive cancellation of CareCommunication due to incorrect receiver"
* title = "Receive cancellation of CareCommunication due to incorrect receiver"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-reply-receiver" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(reply-message, 01, /Fixtures/CareCommunication-fixture-reply-message.xml, destinationUri-reply-message, bundleid-reply-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-reply-receiver.xml, bundleid-retract-message-02)
* insert readMessage(reply-message, 01, bundleid-reply-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-reply-attachment
Instance: CareCommunication_TestScript_receive-retract-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-reply-attachment"
* description = "Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number"
* title = "Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(reply-message, 01, /Fixtures/CareCommunication-fixture-reply-message.xml, destinationUri-reply-message, bundleid-reply-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-reply-attachment.xml, bundleid-retract-message-02)
* insert readMessage(reply-message, 01, bundleid-reply-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-forward-cpr
Instance: CareCommunication_TestScript_receive-retract-forward-cpr
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-forward-cpr"
* description = "Receive cancellation of CareCommunication due to incorrect CPR-number"
* title = "Receive cancellation of CareCommunication due to incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-forward-cpr" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(forward-message, 01, /Fixtures/CareCommunication-fixture-forward-message.xml, destinationUri-forward-message, bundleid-forward-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-forward-cpr.xml, bundleid-retract-message-02)
* insert readMessage(forward-message, 01, bundleid-forward-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-forward-receiver
Instance: CareCommunication_TestScript_receive-retract-forward-receiver
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-forward-receiver"
* description = "Receive cancellation of CareCommunication due to incorrect receiver"
* title = "Receive cancellation of CareCommunication due to incorrect receiver"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-forward-receiver" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(forward-message, 01, /Fixtures/CareCommunication-fixture-forward-message.xml, destinationUri-forward-message, bundleid-forward-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-forward-receiver.xml, bundleid-retract-message-02)
* insert readMessage(forward-message, 01, bundleid-forward-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)

//Get cancel-forward-attachment
Instance: CareCommunication_TestScript_receive-retract-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-retract-forward-attachment"
* description = "Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number"
* title = "Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-retract-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(forward-message, 01, /Fixtures/CareCommunication-fixture-forward-message.xml, destinationUri-forward-message, bundleid-forward-message-01)
* insert createMessageSetup(retract-message, 02, /Fixtures/CareCommunication-fixture-retract-forward-attachment.xml, bundleid-retract-message-02)
* insert readMessage(forward-message, 01, bundleid-forward-message-01)
* insert readMessage(retract-message, 02, bundleid-retract-message-02)