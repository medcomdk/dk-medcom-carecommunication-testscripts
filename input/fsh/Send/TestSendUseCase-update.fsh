/* //modify Reply with changed text
Instance: CareCommunication_TestScript_send-modify-new
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new"
* description = "Correct text of a new CareCommunication"
* title = "Correct text of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
// * insert variableText(new-message, 01)
//* insert variableText(modified-message, 02)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 1) 
//* insert assertContentChanged(text-new-message-01, text-modified-message-02)


//Modify-new
Instance: CareCommunication_TestScript_send-modify-new-category
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-category"
* description = "Correct the category of a new CareCommunication"
* title = "Correct the category of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-category" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(modified-message, 02)
* insert assertContentChanged(category-new-message-01, category-modified-message-02)

//Modify-new-attachment
Instance: CareCommunication_TestScript_send-modify-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-attachment"
* description = "Correct the attached files of a new CareCommunication"
* title = "Correct the attached files of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 7) 
* insert variableAttachmentIdentifier(new-message, 01, application/pdf)
* insert variableAttachmentIdentifier(modified-message, 02, application/pdf)
* insert assertContentChanged(identifier-new-message-01-application/pdf, identifier-modified-message-02-application/pdf)
* insert variableAttachmentIdentifier(new-message, 01, image/gif)
* insert variableAttachmentIdentifier(modified-message, 02, image/gif)
* insert assertContentChanged(identifier-new-message-01-image/gif, identifier-modified-message-02-image/gif)
* insert variableAttachmentIdentifier(new-message, 01, image/jpeg)
* insert variableAttachmentIdentifier(modified-message, 02, image/jpeg)
* insert assertContentChanged(identifier-new-message-01-image/jpeg, identifier-modified-message-02-image/jpeg)
* insert variableAttachmentIdentifier(new-message, 01, image/png)
* insert variableAttachmentIdentifier(modified-message, 02, image/png)
* insert assertContentChanged(identifier-new-message-01-image/png, identifier-modified-message-02-image/png)
* insert variableAttachmentIdentifier(new-message, 01, image/tiff)
* insert variableAttachmentIdentifier(modified-message, 02, image/tiff)
* insert assertContentChanged(identifier-new-message-01-image/tiff, identifier-modified-message-02-image/tiff)

//Modify-new
Instance: CareCommunication_TestScript_send-modify-new-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-topic"
* description = "Correct topic of a new CareCommunication"
* title = "Correct topic of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableTopicSetup(new-message, 01)
* insert variableTopic(modified-message, 02)
* insert assertContentChanged(topic-new-message-01, topic-reply-message-02)

//new formatted-text
Instance: CareCommunication_TestScript_send-modify-new-formatted-text
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-formatted-text"
* description = "Correct formatted text and table of a new CareCommunication"
* title = "Correct formatted text and table of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-formatted-text" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
//????


Instance: CareCommunication_TestScript_send-modify-new-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-category-other"
* description = "Correct category from 'Other' of a new CareCommunication"
* title = "Correct category from 'Other' of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert assertCategory(other)
* insert assertTopicIncluded
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(modified-message, 02)
* insert assertContentChanged(category-new-message-01, category-modified-message-02)

Instance: CareCommunication_TestScript_send-modify-new-to-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-to-category-other"
* description = "Correct category to 'Other' of a new CareCommunication"
* title = "Correct category to 'Other' of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-to-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertCategory(other)
* insert assertTopicIncluded
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(modified-message, 02)
* insert assertContentChanged(category-new-message-01, category-modified-message-02)

Instance: CareCommunication_TestScript_send-modify-new-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-priority"
* description = "Correct category from 'Regarding referral'"
* title = "Correct category from 'Regarding referral'"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert assertCategory(regarding-referral)
* insert assertPriorityExists
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(modified-message, 02)
* insert assertContentChanged(category-new-message-01, category-modified-message-02)

Instance: CareCommunication_TestScript_send-modify-new-to-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-new-to-priority"
* description = "Correct category to 'Regarding referal' of a new CareCommunication"
* title = "Correct category to 'Regarding referal' of a new CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-new-to-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert variableDestinationUri(new-message, 01)
* insert variableBundleidSetup(new-message, 01)
* insert createMessage(modified-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertCategory(regarding-referral)
* insert assertPriorityExists
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(modified-message, 02)
* insert assertContentChanged(category-new-message-01, category-modified-message-02)


//modify Reply with changed text
Instance: CareCommunication_TestScript_send-modify-reply
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-reply"
* description = "Correct text of a reply CareCommunication"
* title = "Correct text of a reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-reply" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
// * insert variableText(reply-message, 02)
// * insert variableText(modified-message, 03) 
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-02, 3, 3) 
//* insert assertContentChanged(text-reply-message-02, text-modified-message-03)

//modify Reply with changed category
Instance: CareCommunication_TestScript_send-modify-reply-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-reply-changecategory"
* description = "Correct category of a reply CareCommunication"
* title = "Correct category of a reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-reply-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategory(reply-message, 02)
* insert variableCategory(modified-message, 03)
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-02, 3, 3) 
* insert assertContentChanged(category-reply-message-02, category-modified-message-03)

//modify Reply with changed topic
Instance: CareCommunication_TestScript_send-modify-reply-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-reply-changetopic"
* description = "Correct topic of a reply CareCommunication"
* title = "Correct topic of a reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-reply-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableTopic(reply-message, 02)
* insert variableTopic(modified-message, 03)
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-02, 3, 3) 
* insert assertContentChanged(topic-reply-message-02, topic-modified-message-03)

//modify Reply with changed attachment
Instance: CareCommunication_TestScript_send-modify-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-reply-attachment"
* description = "Correct attached files of a reply CareCommunication"
* title = "Correct attached files of a reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 8) 
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-reply-message-02, 3, 8) 
* insert variableAttachmentIdentifier(reply-message, 02, application/pdf)
* insert variableAttachmentIdentifier(modified-message, 03, application/pdf)
* insert assertContentChanged(identifier-reply-message-02-application/pdf, identifier-modified-message-03-application/pdf)
* insert variableAttachmentIdentifier(reply-message, 02, image/gif)
* insert variableAttachmentIdentifier(modified-message, 03, image/gif)
* insert assertContentChanged(identifier-reply-message-02-image/gif, identifier-modified-message-03-image/gif)
* insert variableAttachmentIdentifier(reply-message, 02, image/jpeg)
* insert variableAttachmentIdentifier(modified-message, 03, image/jpeg)
* insert assertContentChanged(identifier-reply-message-02-image/jpeg, identifier-modified-message-03-image/jpeg)
* insert variableAttachmentIdentifier(reply-message, 02, image/png)
* insert variableAttachmentIdentifier(modified-message, 03, image/png)
* insert assertContentChanged(identifier-reply-message-02-image/png, identifier-modified-message-03-image/png)
* insert variableAttachmentIdentifier(reply-message, 02, image/tiff)
* insert variableAttachmentIdentifier(modified-message, 03, image/tiff)
* insert assertContentChanged(identifier-reply-message-02-image/tiff, identifier-modified-message-03-image/tiff)


//modify Reply with changed text
Instance: CareCommunication_TestScript_send-modify-forward
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-forward"
* description = "Correct text of a forward CareCommunication"
* title = "Correct text of a forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-forward" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
// * insert variableText(forward-message, 02)
// * insert variableText(modified-message, 03)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-02, 3, 3) 
//* insert assertContentChanged(text-forward-message-02, text-modified-message-03)

//modify forward with changed category
Instance: CareCommunication_TestScript_send-modify-forward-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-forward-changecategory"
* description = "Correct category of a forward CareCommunication"
* title = "Correct category of a forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-forward-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategory(forward-message, 02)
* insert variableCategory(modified-message, 03)
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-02, 3, 3) 
* insert assertContentChanged(category-forward-message-02, category-modified-message-03)

//modify forward with changed topic
Instance: CareCommunication_TestScript_send-modify-forward-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-forward-changetopic"
* description = "Correct topic of a forward CareCommunication"
* title = "Correct topic of a forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-forward-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableTopic(forward-message, 02)
* insert variableTopic(modified-message, 03)
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-02, 3, 3) 
* insert assertContentChanged(topic-forward-message-02, topic-modified-message-03)

//modify forward with changed attachment
Instance: CareCommunication_TestScript_send-modify-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-modify-forward-attachment"
* description = "Correct attaches files of a forward CareCommunication"
* title = "Correct attaches files of a forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-modify-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, /Fixtures/CareCommunication-fixture-new-message.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(forward-message, 02, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-new-message-01, 2, 8) 
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)
* insert createMessage(modified-message, 03, /Fixtures/CareCommunication-fixture.xml, revision, messageHeaderid-forward-message-02, 3, 8) 
* insert variableAttachmentIdentifier(forward-message, 02, application/pdf)
* insert variableAttachmentIdentifier(modified-message, 03, application/pdf)
* insert assertContentChanged(identifier-forward-message-02-application/pdf, identifier-modified-message-03-application/pdf)
* insert variableAttachmentIdentifier(forward-message, 02, image/gif)
* insert variableAttachmentIdentifier(modified-message, 03, image/gif)
* insert assertContentChanged(identifier-forward-message-02-image/gif, identifier-modified-message-03-image/gif)
* insert variableAttachmentIdentifier(forward-message, 02, image/jpeg)
* insert variableAttachmentIdentifier(modified-message, 03, image/jpeg)
* insert assertContentChanged(identifier-forward-message-02-image/jpeg, identifier-modified-message-03-image/jpeg)
* insert variableAttachmentIdentifier(forward-message, 02, image/png)
* insert variableAttachmentIdentifier(modified-message, 03, image/png)
* insert assertContentChanged(identifier-forward-message-02-image/png, identifier-modified-message-03-image/png)
* insert variableAttachmentIdentifier(forward-message, 02, image/tiff)
* insert variableAttachmentIdentifier(modified-message, 03, image/tiff)
* insert assertContentChanged(identifier-forward-message-02-image/tiff, identifier-modified-message-03-image/tiff)
 */