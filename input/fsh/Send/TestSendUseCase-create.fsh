//new message
Instance: CareCommunication_TestScript_send-new-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-message"
* description = "Send CareCommunication. Receiver is expected to be 'Klinik for Ældresygdomme, AUH, Skejby' with SOR-id: 441211000016000."
* title = "Send CareCommunication. Receiver is expected to be 'Klinik for Ældresygdomme, AUH, Skejby' with SOR-id: 441211000016000."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage( new-message and 01 and ../Fixtures/CareCommunication-fixture.xml ) 
* insert assertReceiverEAN(5790001987244)
* insert assertReceiverSOR(441211000016000)

/* //new attachment
Instance: CareCommunication_TestScript_send-new-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-attachment"
* description = "Send CareCommunication with attached files. One attachment of each mimetype is exected. Receiver is expected to be 'Sundhedsplejen, Aabenraa kommune' with SOR-id: 330461000016004."
* title = "Send CareCommunication with attached files. One attachment of each mimetype is exected. Receiver is expected to be 'Sundhedsplejen, Aabenraa kommune' with SOR-id: 330461000016004."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml) 
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)
* insert assertReceiverEAN(5790001353308)
* insert assertReceiverSOR(330461000016004)

//new topic
Instance: CareCommunication_TestScript_send-new-topic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-topic"
* description = "Send CareCommunication with topic. Receiver is expected to be 'Lægeklinik Ølgod' with SOR-id: 1339531000016004."
* title = "Send CareCommunication with topic. Receiver is expected to be 'Lægeklinik Ølgod' with SOR-id: 1339531000016004."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-topic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml) 
* insert assertTopicIncluded
* insert assertReceiverEAN(5790002626814)
* insert assertReceiverSOR(1339531000016004)

//new formatted-text
Instance: CareCommunication_TestScript_send-new-formatted-text
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-formatted-text"
* description = "Send CareCommunication with formatted text and table. Receiver is expected to be 'Anita Thenstrup' with SOR-id: 502191000016006."
* title = "Send CareCommunication with formatted text and table. Receiver is expected to be 'Anita Thenstrup' with SOR-id: 502191000016006."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-formatted-text" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml) 
* insert assertXHTMLCheck
* insert assertReceiverEAN(5790002003165)
* insert assertReceiverSOR(502191000016006)

//new category-other
Instance: CareCommunication_TestScript_send-new-category-other
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-category-other"
* description = "Send CareCommunication with category 'Other'. Receiver is expected to be 'SLB Hjertesygdomme Ambulatorium (Kolding), Kolding Sygehus' with SOR-id: 349061000016004."
* title = "Send CareCommunication with category 'Other'. Receiver is expected to be 'SLB Hjertesygdomme Ambulatorium (Kolding), Kolding Sygehus' with SOR-id: 349061000016004. "
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-category-other" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml) 
* insert assertCategory(other)
* insert assertTopicIncluded
* insert assertReceiverEAN(5790002027451)
* insert assertReceiverSOR(349061000016004)

//new priority
Instance: CareCommunication_TestScript_send-new-priority
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-new-priority"
* description = "Send CareCommunication with category 'Regarding referral' and included priority. Receiver is expected to be 'Pædagogisk Psykologisk Rådgivning, Aalborg kommune' with SOR-id: 1385391000016002."
* title = "Send CareCommunication with category 'Regarding referral' and included priority. Receiver is expected to be 'Pædagogisk Psykologisk Rådgivning, Aalborg kommune' with SOR-id: 1385391000016002."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-new-priority" 
* name = "CareCommunicationTestScript"
* insert createInitialMessage(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml) 
* insert assertCategory(regarding-referral)
* insert assertPriorityExists
* insert assertReceiverEAN(5790002632389)
* insert assertReceiverSOR(1385391000016002)


//Reply message
Instance: CareCommunication_TestScript_send-reply-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-message"
* description = "Reply CareCommunication"
* title = "Reply CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message  and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision  and messageHeaderid-new-message-01  and 2  and 2) 

//Reply attachment
Instance: CareCommunication_TestScript_send-reply-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-attachment"
* description = "Reply CareCommunication with attached files. One attachment of each mimetype is exected."
* title = "Reply CareCommunication with attached files. One attachment of each mimetype is exected."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 7) 
* insert assertMimetype(application/pdf)
* insert assertMimetype(image/gif)
* insert assertMimetype(image/jpeg)
* insert assertMimetype(image/png)
* insert assertMimetype(image/tiff)

Instance: CareCommunication_TestScript_send-reply-add-attachment
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-add-attachment"
* description = "Reply CareCommunication add new attachments. One attachment of each mimetype is exected."
* title = "Reply CareCommunication add new attachments. One attachment of each mimetype is exected."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-add-attachment" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 7) 
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
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 2) 
* insert variableCategorySetup(new-message and 01)
* insert variableCategory(reply-message and 02)


//Reply  with changed topic
Instance: CareCommunication_TestScript_send-reply-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-changetopic"
* description = "Reply CareCommunication with changed topic"
* title = "Reply CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 2) 
* insert variableTopicSetup(new-message and 01)
* insert variableTopic(reply-message and 02)
* insert assertContentChanged(topic-new-message-01 and topic-reply-message-02)

/* //Reply to OIOXML
Instance: CareCommunication_TestScript_send-reply-oioxmlmessage
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-oioxmlmessage"
* description = "Reply to OIOXML"
* title = "Reply to OIOXML"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-oioxmlmessage" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetupNotFHIR(oioxml and 01 and ../Fixtures/CareCommunication-fixture-oioxml.xml)
// * insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision, messageHeaderid-new-message-01, 2, 2)  
 
 
//Reply to a CareCommunication sent by the same system
Instance: CareCommunication_TestScript_send-reply-new
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-reply-new"
* description = "Reply CareCommunication to a CareCommunication send by the replying system"
* title = "Reply CareCommunication to a CareCommunication send by the replying system"
* name = "CareCommunicationTestScript"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-reply-new" 
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert createMessage(reply-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 2) 

//Forward message
Instance: CareCommunication_TestScript_send-forward-message
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-message"
* description = "Forward CareCommunication"
* title = "Forward CareCommunication"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-message" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert variableHospitalSOR(new-message and 01) 
* insert createMessage(forward-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 2) 
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
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert variableHospitalSOR(new-message and 01) 
* insert createMessage(forward-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 7) 
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
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert variableHospitalSOR(new-message and 01) 
* insert createMessage(forward-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 2) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert variableCategorySetup(new-message and 01)
* insert variableCategory(forward-message and 02)
* insert assertContentChanged(category-new-message-01 and category-forward-message-02)

//Forward changetopic
Instance: CareCommunication_TestScript_send-forward-changetopic
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-changetopic"
* description = "Forward CareCommunication with changed topic"
* title = "Forward CareCommunication with changed topic"
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-changetopic" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(new-message and 01 and ../Fixtures/CareCommunication-fixture.xml and destinationUri-new-message and bundleid-new-message-01)
* insert readMessage(new-message and 01 and bundleid-new-message-01)
* insert variableHospitalSOR(new-message and 01) 
* insert createMessage(forward-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-new-message-01 and 2 and 2) 
* insert assertSenderSOR(hospitalSOR-new-message)
* insert variableTopicSetup(new-message and 01)
* insert variableTopic(forward-message and 02)
* insert assertContentChanged(topic-new-message-01 and topic-forward-message-02)

//Forward partialthread
Instance: CareCommunication_TestScript_send-forward-partialthread
InstanceOf: TestScript
* insert Metadata
* id = "carecommunication-send-forward-partialthread"
* description = "Forward a part of the CareCommunication thread. Only the reply-message is expected to be forwarded."
* title = "Forward a part of the CareCommunication thread. Only the reply-message is expected to be forwarded."
* url = "http://medcomfhir.dk/ig/carecommunicationtestscript/carecommunication-send-forward-partialthread" 
* name = "CareCommunicationTestScript"
* insert createInitialMessageSetup(reply-message and 01 and ../Fixtures/CareCommunication-fixture-reply-message.xml and destinationUri-reply-message and bundleid-reply-message-01)
* insert readMessage(reply-message and 01 and bundleid-reply-message-01)
* insert variableHospitalSOR(reply-message and 01) 
* insert createMessage(forward-message and 02 and  ../Fixtures/CareCommunication-fixture-empty.xml and revision and messageHeaderid-reply-message-01 and 2 and 2) 
* insert assertSenderSOR(hospitalSOR-reply-message)
 */