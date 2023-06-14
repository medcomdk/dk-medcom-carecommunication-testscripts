//cancel new - cpr
Instance: CareCommunication_TestScript_retract-new-cpr
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-new-cpr"
* description = "Cancel a new CareCommunication due to incorrect CPR-number"
* title = "Cancel a new CareCommunication due to incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-new-cpr" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(retract-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to incorrect CPR-number)


//cancel new - receiver
Instance: CareCommunication_TestScript_retract-new-receiver
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-new-receiver"
* description = "Cancel a new CareCommunication due to incorrect receiver"
* title = "Cancel a new CareCommunication due to incorrect receiver"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-new-receiver" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(retract-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to incorrect receiver)


//cancel new - attachment
Instance: CareCommunication_TestScript_retract-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-new-attachment"
* description = "Cancel a new CareCommunication due to attachment with content concerning an incorrect CPR-number"
* title = "Cancel a new CareCommunication due to attachment with content concerning an incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(retract-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to attachment with content concerning a incorrect CPR-number)


//cancel reply - cpr
Instance: CareCommunication_TestScript_retract-reply-cpr
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-reply-cpr"
* description = "Cancel a reply CareCommunication due to incorrect CPR-number"
* title = "Cancel a reply CareCommunication due to incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-reply-cpr" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-01, 2, 3) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to incorrect CPR-number)


//cancel reply - receiver
Instance: CareCommunication_TestScript_retract-reply-receiver
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-reply-receiver"
* description = "Cancel a reply CareCommunication due to incorrect receiver"
* title = "Cancel a reply CareCommunication due to incorrect receiver"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-reply-receiver" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-01, 2, 3) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to incorrect receiver)


//cancel reply - attachment
Instance: CareCommunication_TestScript_retract-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-reply-attachment"
* description = "Cancel a reply CareCommunication due to attachment with content concerning an incorrect CPR-number"
* title = "Cancel a reply CareCommunication due to attachment with content concerning an incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-01, 2, 3) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to attachment with content concerning a incorrect CPR-number)



//cancel forward - cpr
Instance: CareCommunication_TestScript_retract-forward-cpr
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-forward-cpr"
* description = "Cancel a forward CareCommunication due to incorrect CPR-number"
* title = "Cancel a forward CareCommunication due to incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-forward-cpr" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-01, 2, 3) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to incorrect CPR-number)


//cancel forward - receiver
Instance: CareCommunication_TestScript_retract-forward-receiver
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-forward-receiver"
* description = "Cancel a forward CareCommunication due to incorrect receiver"
* title = "Cancel a forward CareCommunication due to incorrect receiver"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-forward-receiver" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-01, 2, 3) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to incorrect receiver)


//cancel forward - attachment
Instance: CareCommunication_TestScript_retract-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-retract-forward-attachment"
* description = "Cancel a forward CareCommunication due to attachment with content concerning an incorrect CPR-number"
* title = "Cancel a forward CareCommunication due to attachment with content concerning an incorrect CPR-number"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-retract-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(retract-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-01, 2, 3) 
* insert assertCommunications(2)
* insert assertCommunicationStatus(entered-in-error)
* insert assertCommunicationStatus(unknown)
* insert assertCancallationReason(entered-in-error, Cancellation due to attachment with content concerning a incorrect CPR-number)

