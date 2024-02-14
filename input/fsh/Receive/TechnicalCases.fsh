/* //Get tec-01
Instance: CareCommunication_TestScript_receive-tec-01
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-01"
* description = "Receive new CareCommunication for a deceased patient"
* title = "Receive new CareCommunication for a deceased patient"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-01" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-deceased.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get tec-02
Instance: CareCommunication_TestScript_receive-tec-02
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-02"
* description = "Receive new CareCommunication with all MustSupport content (without attachments)"
* title = "Receive new CareCommunication with all MustSupport content (without attachments)"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-02" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-mustsupport.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)

//Get tec-07
Instance: CareCommunication_TestScript_receive-tec-07
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-07"
* description = "Receive new CareCommunication with specific sender and recipient included"
* title = "Receive new CareCommunication with sender and recipient included"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-07" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-sender-recipient.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)


//Get tec-03
Instance: CareCommunication_TestScript_receive-tec-03
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-03"
* description = "Receive CareCommunication, receive CareCommunication (positiv dublet)"
* title = "Receive CareCommunication, receive CareCommunication (positiv dublet)"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-03" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(new-message, 02, /Fixtures/CareCommunication-fixture-new-message.xml, bundleid-new-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(new-message, 02, bundleid-new-message-02)

//Get tec-04
Instance: CareCommunication_TestScript_receive-tec-04
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-04"
* description = "Receive invalid CareCommunication, receive invalid CareCommunication (negative dublet)"
* title = "Receive invalid CareCommunication, receive invalid CareCommunication (negative dublet)"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-04" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-invalid-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert createMessageSetup(new-message, 02, /Fixtures/CareCommunication-fixture-invalid-new-message.xml, bundleid-new-message-02)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert readMessage(new-message, 02, bundleid-new-message-02)


//Get tec-05
Instance: CareCommunication_TestScript_receive-tec-05
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-05"
* description = "Receive CareCommunications in wrong order (correction)"
* title = "Receive CareCommunications in wrong order (correction)"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-05" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(modify-message, 01, /Fixtures/CareCommunication-fixture-modify-new-message.xml, destinationUri-modify-message, bundleid-modify-message-01)
* insert createMessageSetup(new-message, 02, /Fixtures/CareCommunication-fixture-new-message.xml, bundleid-new-message-02)
* insert readMessage(modify-message, 01, bundleid-modify-message-01)
* insert readMessage(new-message, 02, bundleid-new-message-02)

//Get tec-06
Instance: CareCommunication_TestScript_receive-tec-06
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-receive-tec-06"
* description = "Receive CareCommunications in wrong order (cancellation)"
* title = "Receive CareCommunications in wrong order (cancellation)"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-receive-tec-06" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(retract-message, 01, /Fixtures/CareCommunication-fixture-retract-new-cpr.xml, destinationUri-retract-message, bundleid-retract-message-01)
* insert createMessageSetup(new-message, 02, /Fixtures/CareCommunication-fixture-new-message.xml, bundleid-new-message-02)
* insert readMessage(retract-message, 01, bundleid-retract-message-01)
* insert readMessage(new-message, 02, bundleid-new-message-02) */