//new message
Instance: CareCommunication_TestScript_send-new-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-message"
* description = "Send CareCommunication."
* title = "Send CareCommunication. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage( new-message, 01, ../Fixtures/CareCommunication-fixture.xml ) 
//* insert assertReceiverEAN( 5790001987244 )
//* insert assertReceiverSOR( 441211000016000 )

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-pdf
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-pdf"
* description = "Send CareCommunication with a pdf-document as an attached file. "
* title = "Send CareCommunication with a pdf-document as an attached file. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-pdf" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(application/pdf)
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-gif
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-gif"
* description = "Send CareCommunication with a gif as an attached file. "
* title = "Send CareCommunication with a gif as an attached file. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-gif" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(image/gif)
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-png
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-png"
* description = "Send CareCommunication with a png as an attached file. "
* title = "Send CareCommunication with a png as an attached file. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-png" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(image/png)
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-jpeg
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-jpeg"
* description = "Send CareCommunication with a jpeg as an attached file. "
* title = "Send CareCommunication with a jpeg as an attached file. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-jpeg" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(image/jpeg)
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-bmp
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-bmp"
* description = "Send CareCommunication with a bmp as an attached file."
* title = "Send CareCommunication with a bmp as an attached file."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-bmp" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(image/bmp)
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-tiff
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-tiff"
* description = "Send CareCommunication with a tiff as an attached file. "
* title = "Send CareCommunication with a tiff as an attached file. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-tiff" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(image/tiff)
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new attachment
Instance: CareCommunication_TestScript_send-new-attachment-link
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-link"
* description = "Send CareCommunication with a link as an attachment."
* title = "Send CareCommunication with a link as an attachment."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-link" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertAttachmentURL
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)


Instance: CareCommunication_TestScript_send-new-attachment-multiple
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-multiple"
* description = "Send CareCommunication with a multiple attached files. "
* title = "Send CareCommunication with a multiple attached files. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-multiple" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertAttachmentCount
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

Instance: CareCommunication_TestScript_send-new-attachment-structured
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment-structured"
* description = "Send CareCommunication with an attachment and structured author information. "
* title = "Send CareCommunication with an attachment and structured author information. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment-structured" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertAttachmentCreationTime
* insert assertStructuredSignatur
//* insert assertReceiverEAN(5790001353308)
//* insert assertReceiverSOR(330461000016004)

//new topic
Instance: CareCommunication_TestScript_send-new-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-topic"
* description = "Send CareCommunication with topic. "
* title = "Send CareCommunication with topic. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertTopicIncluded
//* insert assertReceiverEAN(5790002626814)
//* insert assertReceiverSOR(1339531000016004)



//new category-other
Instance: CareCommunication_TestScript_send-new-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-category-other"
* description = "Send CareCommunication with category 'Other'. "
* title = "Send CareCommunication with category 'Other'. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertCategory(other)
* insert assertTopicIncluded
//* insert assertReceiverEAN(5790002027451)
//* insert assertReceiverSOR(349061000016004)

//new priority
Instance: CareCommunication_TestScript_send-new-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-priority"
* description = "Send CareCommunication with category 'Regarding referral', included priority."
* title = "Send CareCommunication with category 'Regarding referral', included priority. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, ../Fixtures/CareCommunication-fixture.xml) 
* insert assertCategory(regarding-referral)
* insert assertPriorityExists
//* insert assertReceiverEAN(5790002632389)
//* insert assertReceiverSOR(1385391000016002)

 

//Reply message
Instance: CareCommunication_TestScript_send-reply-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-message"
* description = "Reply CareCommunication"
* title = "Reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-new-message-01)


//Reply attachment
Instance: CareCommunication_TestScript_send-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-attachment"
* description = "Reply CareCommunication where the new message includes one attached files."
* title = "Reply CareCommunication where the new message includes one attached files"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-attachment.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 3) 
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-new-message-01)


Instance: CareCommunication_TestScript_send-reply-add-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-add-attachment"
* description = "Reply CareCommunication add two new attachments."
* title = "Reply CareCommunication add two new attachments"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-add-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-attachment.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml,revision, messageHeaderid-new-message-01, 2, 5) 
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-new-message-01)
* insert assertAttachmentExactCount(3)


//Reply  with changed category
Instance: CareCommunication_TestScript_send-reply-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-changecategory"
* description = "Reply CareCommunication with changed category"
* title = "Reply CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(reply-message, 02)
* insert assertCommunicationCategoryNotAlike(category-new-message-01)
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-new-message-01)

//Reply  with changed topic
Instance: CareCommunication_TestScript_send-reply-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-changetopic"
* description = "Reply CareCommunication with changed topic"
* title = "Reply CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
//* insert variableTopicSetup(new-message, 01)
//* insert variableTopic(reply-message, 02)
//* insert assertContentChanged(topic-new-message-01, topic-reply-message-02)
* insert assertChangedTopic
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-new-message-01)

//Reply to a CareCommunication sent by the same system
Instance: CareCommunication_TestScript_send-reply-new
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-new"
* description = "Reply CareCommunication to a CareCommunication send by the replying system"
* title = "Reply CareCommunication to a CareCommunication send by the replying system"
* name = "CareCommunicationTestScript"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-new" 
* insert createInitialMessage( new-message, 01,  ../Fixtures/CareCommunication-fixture.xml ) 
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-new-message-01)

Instance: CareCommunication_TestScript_send-reply-forward
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-forward"
* description = "Reply CareCommunication to a CareCommunication that has been forwarded"
* title = "Reply CareCommunication to a CareCommunication that has been forwarded"
* name = "CareCommunicationTestScript"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-new" 
* insert createInitialMessage(forward-message, 01,  ../Fixtures/CareCommunication-fixture-forward.xml ) 
* insert createMessage(reply-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert variableCommunicationIdentifierSetup(forward-message, 01)
* insert variableCommunicationIdentifier(reply-message, 02)
* insert assertCommunicationIdentifierAlike(identifier-forward-message-01)

/* //Reply to OIOXML
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
* insert  createMessage(reply-message, 02,  ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2)  
 
 */

//Forward message
Instance: CareCommunication_TestScript_send-forward-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-message"
* description = "Forward CareCommunication"
* title = "Forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message-01)
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(forward-message, 02)
* insert assertCommunicationIdentifierNotAlike(identifier-new-message-01)

//Forward message
Instance: CareCommunication_TestScript_send-forward-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-attachment"
* description = "Forward CareCommunication where the new message includes 1 attached file."
* title = "Forward CareCommunication where the new message includes 1 attached file."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-attachment.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 3) 
* insert assertSenderSOR(hospitalSOR-new-message-01)
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(forward-message, 02)
* insert assertCommunicationIdentifierNotAlike(identifier-new-message-01)

//Forward message
Instance: CareCommunication_TestScript_send-forward-add-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-add-attachment"
* description = "Forward CareCommunication with 1 attachment and add 2 new attachments."
* title = "Forward CareCommunication with 1 attachment and add 2 new attachments."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-add-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-attachment.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 5) 
* insert assertSenderSOR(hospitalSOR-new-message-01)
* insert assertAttachmentExactCount(3)
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(forward-message, 02)
* insert assertCommunicationIdentifierNotAlike(identifier-new-message-01)

//Forward changecategory
Instance: CareCommunication_TestScript_send-forward-changecategory
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-changecategory"
* description = "Forward CareCommunication with changed category"
* title = "Forward CareCommunication with changed category"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-changecategory" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message-01)
* insert variableCategorySetup(new-message, 01)
* insert variableCategory(forward-message, 02)
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(forward-message, 02)
* insert assertCommunicationCategoryNotAlike(category-new-message-01)
* insert assertCommunicationIdentifierNotAlike(identifier-new-message-01)

//Forward changetopic
Instance: CareCommunication_TestScript_send-forward-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-changetopic"
* description = "Forward CareCommunication with changed topic"
* title = "Forward CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert variableTopicSetup(new-message, 01)
* insert variableTopic(forward-message, 02)
* insert assertContentChanged(topic-new-message-01, topic-forward-message-02) //denne virker ikke, skal finde en anden måde at sammenligne topics på
* insert assertCommunicationIdentifierNotAlike(identifier-new-message-01)

//Forward partialthread
Instance: CareCommunication_TestScript_send-forward-partialthread
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-partialthread"
* description = "Forward a part of the CareCommunication thread. Only the message text is expected to be forwarded"
* title = "Forward a part of the CareCommunication thread. Only the message text is expected to be forwarded"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-partialthread" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message, 01, ../Fixtures/CareCommunication-fixture-attachment.xml, destinationUri-new-message, bundleid-new-message-01)
* insert readMessage(new-message, 01, bundleid-new-message-01)
* insert variableHospitalSOR(new-message, 01) 
* insert createMessage(forward-message, 02, ../Fixtures/CareCommunication-fixture-empty.xml, revision, messageHeaderid-new-message-01, 2, 2) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert variableCommunicationIdentifierSetup(new-message, 01)
* insert variableCommunicationIdentifier(forward-message, 02)
* insert assertCommunicationIdentifierNotAlike(identifier-new-message-01)



/*  //new formatted-text
Instance: CareCommunication_TestScript_send-new-formatted-text
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-formatted-text"
* description = "Send CareCommunication with formatted text, table. Receiver is expected to be 'Anita Thenstrup' with SOR-id: 502191000016006."
* title = "Send CareCommunication with formatted text, table. Receiver is expected to be 'Anita Thenstrup' with SOR-id: 502191000016006."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-formatted-text" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message, 01, /Fixtures/CareCommunication-fixture.xml) 
* insert assertXHTMLCheck
* insert assertReceiverEAN(5790002003165)
* insert assertReceiverSOR(502191000016006) */