The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification. The test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). TouchStone and an application programming interface (API), e.g. Postman, or the system under test (SUT), are used to execute the test scripts. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-carecommunication/#12-use-cases) will be referenced throughout this IG and they are the foundation for the tests. 

In addition to test scripts based on the use cases, test scripts testing the technical aspects are included. They will focus on the technical tests within the boundaries of the CareCommunication standard and governance. All tests are used to support the test protocols for sending and receiving CareCommunications. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account, be a member of MedComs Org Group, and to create a test system in TouchStone. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Test script naming
**Use cases:** The name of the test scripts is constituted by CareCommunication_TestScript_[send/receive]-[type], describing the type of messages being sent or received, for instance CareCommunication_TestScript_send-new-message. 'CareCommunication_TestScript_' is not shown in the tables below.

**Technical cases:** The name of the test scripts is constituted by CareCommunication_TestScript_[send/receive]-[tec]-[number]. For instance CareCommunication_Testscript_send-tec-02. 'CareCommunication_TestScript_' is not shown in the tables below. 

#### Test examples 

Test examples are, in TouchStone testing, called fixtures. When testing the CareCommunication standard, the fixtures are previously sent CareCommunications. The fixtures are already uploaded to TouchStone. During setup of a test, all relevant fixtures will automatically be uploaded to the server that is used during test. From an API it is possible to request relevant fixtures. 

Timestamps in fixtures are sent between the 2023-03-01 and 2023-03-02. All corerctions and cancellation messages are sent within an one hour after the initial message.

All fixtures are based on the test patient:
* Family name: Elmer
* CPR-nr.: 250947-9989 

#### Operations

When sending a CareCommunication, a POST operation is required for all types of messages, and must be used for both the preconditional messages and actual messages being sent. The POST operation should be used from the API or SUT, and each posted message will be validated against the CareCommunication IG. Further, a number of asserts will test for correct concent of the CareCommunication message. The endpoint of the POST operation depends on the setup of the testscript, but it migth be similar to: `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle`

When receiving a CareCommunication, which is the cases in some preconditions, a GET operation must be used from the API or SUT. When using the GET operation a fixture will send from the server, which can be visualized in SUT.
The endpoint of the GET operation depends on the setup of the testscript, but it will be composed by the server endpoint, Resource type and id. It migth be similar to `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle/b10620cb-e2e6-436e-9185-c35f7e196cea`.

### Send CareCommunication test scripts
To execute all the test scripts below, both POST and GET operations must be used. 

Since it is optional to support sending forwarded, modification and retraction of messages, a the test scripts testing these functionalities are marked with *.  

When executing some of the send test scripts, it is required that SUT has executed one or more use cases in advance by sending a message. These use cases are listed in the 'Precondition' columns in the tables. 

#### Use Cases

[Test scripts for test of the sending use cases, can be found here in TouchStone](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/CareCommunication/v300-send&activeOnly=false&contentEntry=TEST_SCRIPTS) or see all sending test scripts in the [conformance test suite](https://touchstone.aegis.net/touchstone/conformance/current?suite=FHIR4-0-1-CareCommunication-v300-Send-Client), which will be used for test and certification. The conformance suite provides a great overview of the executed test scripts.

| **Type** | **Use case <br> code** | **Description** | **Activity** | **Precondition use case** |
|---|---|---|---|---|
| **New message** |  |  |  |  |
| [send-new-message](./TestScript-carecommunication-send-new-message) | S1 | Send CareCommunication. <br> Receiver is expected to be 'Klinik for Ældresygdomme, AUH, Skejby' with SOR-id: 441211000016000 | new-message |  |
| [send-new-attachment](./TestScript-carecommunication-send-new-attachment) | S1.A1 | Send CareCommunication with attached files [^1]. <br> Receiver is expected to be 'Sundhedsplejen, Aabenraa kommune' with SOR-id: 330461000016004 | new-message |  |
| [send-new-topic](./TestScript-carecommunication-send-new-topic) | S1.A2 | Send CareCommunication with topic. <br> Receiver is expected to be 'Lægeklinik Ølgod' with SOR-id: 1339531000016004 | new-message |  |
| [send-new-formatted-text](./TestScript-carecommunication-send-new-formatted-text)[^3] | S1.A3 | Send CareCommunication with formatted text and table. <br> Receiver is expected to be 'Anita Thenstrup' with SOR-id: 502191000016006 | new-message |  |
| [send-new-category-other](./TestScript-carecommunication-send-new-category-other) | S1.A5 | Send CareCommunication with category 'Other'. <br> Receiver is expected to be 'SLB Hjertesygdomme Ambulatorium (Kolding), Kolding Sygehus' with SOR-id: 349061000016004 | new-message | |
| [send-new-priority](./TestScript-carecommunication-send-new-priority) | S1.A6 | Send CareCommunication with category 'Regarding referral' and included priority. <br> Receiver is expected to be 'Pædagogisk Psykologisk Rådgivning, Aalborg kommune' with SOR-id: 1385391000016002 | new-message |  |
| **Reply** |  |  |  |  |
| [send-reply-message](./TestScript-carecommunication-send-reply-message) | S2 | Reply CareCommunication | reply-message | R1 |
| [send-reply-attachment](./TestScript-carecommunication-send-reply-attachment) | S2.A1 | Reply CareCommunication with attached files [^1] | reply-message | R1 |
| [send-reply-attachment](./TestScript-carecommunication-send-reply-add-attachment) | S2.A1 | Reply CareCommunication add new attachments [^1] | reply-message | R1 |
| [send-reply-changecategory](./TestScript-carecommunication-send-reply-changecategory) | S2.A2 | Reply CareCommunication with changed category | reply-message | R1 |
| [send-reply-changetopic](./TestScript-carecommunication-send-reply-changetopic) | S2.A2 | Reply CareCommunication with changed topic | reply-message | R1 |
| [send-reply-new](./TestScript-carecommunication-send-reply-new) | S2 | Reply CareCommunication to a CareCommunication send by the replying system | reply-message | S1 |
| <span style="color: grey;">reply-oioxmlmessage</span> | <span style="color: grey;">S2.A3</span>  | <span style="color: grey;">Reply to OIOXML</span> | <span style="color: grey;">reply-message</span> | <span style="color: grey;">R1 (OIOXML-message)</span> |
| <span style="color: grey;">reply-fhirmessage</span> | <span style="color: grey;">S2.A3</span>  | <span style="color: grey;">Reply to FHIR message</span> | <span style="color: grey;">reply-message</span> | <span style="color: grey;">R1 (FHIR-message)</span> |
| **Forward** |  |  |  |  |
| [send-forward-message](./TestScript-carecommunication-send-forward-message)* | S3 | Forward CareCommunication | forward-message | R1 |
| [send-forward-attachment](./TestScript-carecommunication-send-forward-attachment)* | S3.A1 | Forward CareCommunication with attached files [^1] | forward-message | R1 |
| [send-forward-changecategory](./TestScript-carecommunication-send-forward-changecategory)* | S3.A2 | Forward CareCommunication with changed category | forward-message | R1 |
| [send-forward-changetopic](./TestScript-carecommunication-send-forward-changetopic)* | S3.A2 | Forward CareCommunication with changed topic | forward-message | R1 |
| [send-forward-partialthread](./TestScript-carecommunication-send-forward-partialthread)*[^2] | S3.A3 | Forward a part of the CareCommunication thread | forward-message | R1 |
| **Modify** |  |  |  |  |
| [send-modify-new](./TestScript-carecommunication-send-modify-new)* | S.CORR | Correct text of a new CareCommunication  | modify-message | S1 |
| [send-modify-new-category](./TestScript-carecommunication-send-modify-new-category)* | S.CORR | Correct category of a new CareCommunication  | modify-message | S1 |
| [send-modify-new-topic](./TestScript-carecommunication-send-modify-new-topic)* | S.CORR | Correct topic of a new CareCommunication  | modify-message | S1.A2 |
| [send-modify-new-attachment](./TestScript-carecommunication-send-modify-new-attachment)* | S.CORR | Correct with attached files of a new CareCommunication | modify-message | S1.A1 |
| [send-modify-new-formatted-text](./TestScript-carecommunication-send-modify-new-formatted-text)*[^3] | S.CORR | Correct formatted text and table of a new CareCommunication | modify-message | S1.A3 |
| [send-modify-new-category-other](./TestScript-carecommunication-send-modify-new-category-other)* | S.CORR | Correct category of a new CareCommunication from 'Other'  | modify-message | S1.A5 |
| [send-modify-new-priority](./TestScript-carecommunication-send-modify-new-priority)* | S.CORR | Correct category from 'Regarding referral'  | modify-message | S1.A6 |
| [send-modify-new-to-category-other](./TestScript-carecommunication-send-modify-new-to-category-other)* | S.CORR | Correct category of a new CareCommunication to 'Other'  | modify-message | S1.A5 |
| [send-modify-new-to-priority](./TestScript-carecommunication-send-modify-new-to-priority)* | S.CORR | Correct priority of a new CareCommunication to 'Regarding referral'  | modify-message | S1.A6 |
| [send-modify-reply](./TestScript-carecommunication-send-modify-reply)* | S.CORR | Correct text of a reply CareCommunication | modify-message | R1, S2 |
| [send-modify-reply-changecategory](./TestScript-carecommunication-send-modify-reply-changecategory)* | S.CORR | Correct category of a reply CareCommunication| modify-message | R1, S2.A2 |
| [send-modify-reply-changetopic](./TestScript-carecommunication-send-modify-reply-changetopic)* | S.CORR | Correct topic of a reply CareCommunication | modify-message | R1, S2.A2 |
| [send-modify-reply-attachment](./TestScript-carecommunication-send-modify-reply-attachment)* | S.CORR | Correct attached files of a reply CareCommunication | modify-message | R1, S2.A1 |
| <span style="color: grey;">modify-reply-oioxmlmessage</span> | <span style="color: grey;">S.CORR</span>  | <span style="color: grey;">Correct reply to OIOXML</span> | <span style="color: grey;">modify-message</span> | <span style="color: grey;">R1 (OIOXML-message), S2.A3</span> |
| <span style="color: grey;">modify-reply-fhirmessage</span> | <span style="color: grey;">S.CORR</span>  | <span style="color: grey;">Correct reply to FHIR message</span> | <span style="color: grey;">modify-message</span> | <span style="color: grey;">R1 (FHIR-message), S2.A3</span> |
| [send-modify-forward-message](./TestScript-carecommunication-send-modify-forward-message)* | S.CORR | Correct text of a forward CareCommunication | modify-message | R1, S3 |
| [send-modify-forward-attachment](./TestScript-carecommunication-send-modify-forward-attachment)* | S.CORR | Correct attaches files of a forward CareCommunication | modify-message | R1, S3.A1 |
| [send-modify-forward-changecategory](./TestScript-carecommunication-send-modify-forward-changecategory)* | S.CORR |Correct category of a forward CareCommunication | modify-message | R1, S3.A2 |
| [send-modify-forward-changetopic](./TestScript-carecommunication-send-modify-forward-changetopic)* | S.CORR | Correct topic of a forward CareCommunication | modify-message | R1, S3.A2 |
| **Retract** |  |  |  |  |
| [send-retract-new-cpr](./TestScript-carecommunication-send-retract-new-cpr)* | S.CANC | Cancel a new CareCommunication due to incorrect CPR-number | retract-message | S1 |
| [send-retract-new-receiver](./TestScript-carecommunication-send-retract-new-receiver)* | S.CANC | Cancel a new CareCommunication due to incorrect receiver | retract-message | S1 |
| [send-retract-new-attachment](./TestScript-carecommunication-send-retract-new-attachment)* | S.CANC | Cancel a new CareCommunication due to attachment with content <br> concerning an incorrect CPR-number | retract-message | S1.A1 |
| [send-retract-reply-cpr](./TestScript-carecommunication-send-retract-reply-cpr)* | S.CANC | Cancel a reply CareCommunication due to incorrect CPR-number | retract-message | R1, S2 |
| [send-retract-reply-receiver](./TestScript-carecommunication-send-retract-reply-receiver)* | S.CANC | Cancel a reply CareCommunication due to incorrect receiver | retract-message | R1, S2 |
| [send-retract-reply-attachment](./TestScript-carecommunication-send-retract-reply-attachment)* | S.CANC | Cancel a reply CareCommunication due to incorrect attachment with content <br>concerning an incorrect CPR-number | retract-message | R1, S2.A1 |
| [send-retract-forward-cpr](./TestScript-carecommunication-send-retract-forward-cpr)* | S.CANC | Cancel a forward CareCommunication due to incorrect CPR-number| retract-message | R1, S3 |
| [send-retract-forward-receiver](./TestScript-carecommunication-send-retract-forward-receiver)* | S.CANC | Cancel a forward CareCommunication due to incorrect receiver| retract-message | R1, S3 |
| [send-retract-forward-attachment](./TestScript-carecommunication-send-retract-forward-attachment) | S.CANC | Cancel a forward CareCommunication due to incorrect attachment with content <br> concerning an incorrect CPR-number | retract-message | R1, S3.A1 |


#### Technical cases

[Test scripts for test of sending technical cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/) They are also included in the conformance suite.

| **Type** | **Description** | **Activity/activities** |
|---|---|---|
| [send-tec-01](./TestScript-carecommunication-send-tec-01) | Send CareCommunication with sender and recipient | S1 |
| [send-tec-02](./TestScript-carecommunication-send-tec-02) | Send CareCommunication, where the receive is 'Plejecenter Herlev' with GLN-number '5790001348120' | S1 |
| <span style="color: grey;">send-tec-03</span> | <span style="color: grey;">Send CareCommunication with the maximum length in the text of the message segment</span> | <span style="color: grey;">S1</span> |
| [send-tec-04](./TestScript-carecommunication-send-tec-04)* | Send CareCommunication with attachment and an associated structured signature | S1.A1 |
| [send-tec-05](./TestScript-carecommunication-send-tec-05) | Send CareCommunication with episodeOfCareID | S1 |
| [send-tec-06](./TestScript-carecommunication-send-tec-06) | Reply to CareCommunication, where episodeOfCare-identifier is correctly transfered in the communication | R1, S2 |
| [send-tec-07](./TestScript-carecommunication-send-tec-07)* | Cancel CareCommunication which has already been corrected. Expected to cancel the entire thread. | S1, S.CORR, S.CANC |
| [send-tec-08](./TestScript-carecommunication-send-tec-08) | Send CareCommunication, send CareCommunication as the first wasn't acknowledged | S1, S1 |
| [send-tec-09](./TestScript-carecommunication-send-tec-09) | Send CareCommunication, including a messagesegment as a URL to a website | S1|
| [send-tec-10](./TestScript-carecommunication-send-tec-10) | Send CareCommunication concerning a deceased patient | S1|


[^1]: Include one attachment of each mimetype.
[^2]: This test script is only relevant, if the system supports the user can select a specific part of the CareCommunciation to forward.
[^3]: This test script is only relevant, if the system supports the entire subset of formatting.

<!-- 
### Receive CareCommunication test scripts
When receiving a CareCommunication, a GET operation is required for all messages. When receiving a reply, modification of reply or retraction of reply, the receiver would - in a real world scenario - have sent a new CareCommunication in advance. However, it is not possible to create such a setup in TouchStone, as it doesn't have the logic to take some of the content from the sent message and include it in a fixture. Therefore, isn't it a part of the test script to send a CareCommunication before receving a reply. 

#### Use Cases

[Test scripts for test of the receiving use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/testdefinitions?selectedTestGrp=/FHIRSandbox/MedCom/CareCommunication/v210-receive&activeOnly=false&contentEntry=TEST_SCRIPTS) or see all receiving test scripts in the [conformance test suite](https://touchstone.aegis.net/touchstone/conformance/current?suite=FHIR4-0-1-CareCommunication-v210-Receive-Client), which will be used for test and certification. 

| **Type** | **Use case <br> code** | **Description** | **Activity** | **Precondition use case** |
|---|---|---|---|---|
| **New message** |  |  |  |  |
| [receive-new-message](./TestScript-carecommunication-receive-new-message) | R1 | Receive new CareCommunication  | new-message | S1 |
| [receive-new-attachment](./TestScript-carecommunication-receive-new-attachment) | R1 | Receive new CareCommunication with attached files [^1] | new-message | S1.A1 |
| [receive-new-topic](./TestScript-carecommunication-receive-new-topic) | R1 | Receive new CareCommunication with topic | new-message | S1.A2 |
| [receive-new-formatted-text](./TestScript-carecommunication-receive-new-formatted-text)[^2] | R1 | Receive new CareCommunication with formatted text and table | new-message | S1.A3 |
| [receive-new-category-other](./TestScript-carecommunication-receive-new-category-other) | R1 | Receive new CareCommunication with category 'Other'| new-message | S1.A5 |
| [receive-new-priority](./TestScript-carecommunication-receive-new-priority) | R1 | Receive new CareCommunication with category 'Regarding referral' <br> and included priority| new-message | S1.A6 |
| **Reply** |  |  |  |  |
| [receive-reply-message](./TestScript-carecommunication-receive-reply-message) | R1 | Receive reply to CareCommunication | reply-message | S2 |
| [receive-reply-attachment](./TestScript-carecommunication-receive-reply-attachment) | R1 | Receive reply to CareCommunication with attached files | reply-message | S2.A1 |
| [receive-reply-changecategory](./TestScript-carecommunication-receive-reply-changecategory) | R1 | Receive reply to CareCommunication with changed category | reply-message | S2.A2 |
| [receive-reply-changetopic](./TestScript-carecommunication-receive-reply-changetopic) | R1 | Receive reply to CareCommunication with changed topic | reply-message | S2.A2 |
| <span style="color: grey;">receive-reply-oioxmlmessage</span> | | <span style="color: grey;">R1</span> |  <span style="color: grey;">Receive reply to OIOXML message</span> | <span style="color: grey;">S2.A3 (OIOXML-message)</span> |
| <span style="color: grey;">receive-reply-fhirmessage</span> | | <span style="color: grey;">R1</span> |  <span style="color: grey;">Receive reply to FHIR message</span> | <span style="color: grey;">S2.A3 (FHIR-message)</span> |

| **Forward** |  |  |  |  |
| [receive-forward-message](./TestScript-carecommunication-receive-forward-message) | R1 | Receive forward of CareCommunication | forward-message | - |
| [receive-forward-attachment](./TestScript-carecommunication-receive-forward-attachment) | R1 | Receive forward of CareCommunication with attached files | forward-message | - |
| [receive-forward-topic](./TestScript-carecommunication-receive-forward-topic) | R1 | Receive forward of CareCommunication with topic | forward-message | - |
| **Modify** |  |  |  |  |
| [receive-modify-new-message](./TestScript-carecommunication-receive-modify-new-message) | R.CORR | Receive correction of a new CareCommunication | modify-message | S1 |
| [receive-modify-new-attachment](./TestScript-carecommunication-receive-modify-new-attachment) | R.CORR | Receive correction of a new CareCommunication with attached files | modify-message | S1.A1 |
| [receive-modify-new-topic](./TestScript-carecommunication-receive-modify-new-topic) | R.CORR | Receive correction of a new CareCommunication with topic | modify-message | S1.A2 |
| [receive-modify-new-category-other](./TestScript-carecommunication-receive-modify-new-category-other) | R.CORR | Receive correction of a new CareCommunication with category 'Other' | modify-message | S1.A5 |
| [receive-modify-new-priority](./TestScript-carecommunication-receive-modify-new-priority) | R.CORR | Receive correction of a new CareCommunication with category 'Regarding referral' <br> and included priority | modify-message | S1.A6 |
| [receive-modify-reply-message](./TestScript-carecommunication-receive-modify-reply-message) | R.CORR | Receive correction of a reply to CareCommunication | modify-message | R1, S2 |
| [receive-modify-reply-attachment](./TestScript-carecommunication-receive-modify-reply-attachment) | R.CORR | Receive correction of a reply to CareCommunication with attached files | modify-message | R1, S2.A1 |
| [receive-modify-reply-changecategory](./TestScript-carecommunication-receive-modify-reply-changecategory) | R.CORR | Receive correction of a reply to CareCommunication with changed category | modify-message | R1, S2.A2 |
| [receive-modify-reply-changetopic](./TestScript-carecommunication-receive-modify-reply-changetopic) | R.CORR | Receive correction of a reply to CareCommunication with changed topic | modify-message | R1, S2.A2 |
| <span style="color: grey;">receive-modify-reply-oioxmlmessage</span> | | <span style="color: grey;">R1</span> |  <span style="color: grey;">Receive reply to OIOXML message</span> | <span style="color: grey;">S2.A3 (OIOXML-message)</span> |
| <span style="color: grey;">receive-modify-reply-fhirmessage</span> | | <span style="color: grey;">R1</span> |  <span style="color: grey;">Receive reply to FHIR message</span> | <span style="color: grey;">S2.A3 (FHIR-message)</span> |
| [receive-modify-forward-message](./TestScript-carecommunication-receive-modify-forward-message) | R.CORR | Receive correction of a forward of CareCommunication| modify-message | R1, S3 |
| [receive-modify-forward-attachment](./TestScript-carecommunication-receive-modify-forward-attachment) | R.CORR | Receive correction of a forward of CareCommunication with attached files | modify-message | R1, S3.A1 |
| [receive-modify-forward-changecategory](./TestScript-carecommunication-receivemodify-forward-changecategory) | R.CORR | Receive correction of a forward of CareCommunication with changed category | modify-message | R1, S3.A2 |
| [receive-modify-forward-changetopic](./TestScript-carecommunication-receive-modify-forward-changetopic) | R.CORR | Receive correction of a forward of CareCommunication with changed topic | modify-message | R1, S3.A2 |
| **Retract** |  |  |  |  |
| [receive-retract-new-cpr](./TestScript-carecommunication-receive-retract-new-cpr) | R.CANC | Receive cancellation of CareCommunication due to incorrect CPR-number | retract-message | S1, S.CANC |
| [receive-retract-new-receiver](./TestScript-carecommunication-receive-retract-new-receiver) | R.CANC | Receive cancellation of CareCommunication due to incorrect receiver | retract-message | S1, S.CANC |
| [receive-retract-new-attachment](./TestScript-carecommunication-receive-retract-new-attachment) | R.CANC | Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number | S1.A1, S.CANC |
| [receive-retract-reply-cpr](./TestScript-carecommunication-receive-retract-reply-cpr) | R.CANC | Receive cancellation of CareCommunication due to incorrect CPR-number | retract-message | R1, S2, S.CANC |
| [receive-retract-reply-receiver](./TestScript-carecommunication-receive-retract-reply-receiver) | R.CANC | Receive cancellation of CareCommunication due to incorrect receiver | retract-message | R1, S2, S.CANC |
| [receive-retract-reply-attachment](./TestScript-carecommunication-receive-retract-reply-attachment) | R.CANC | Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number | retract-message | R1, S2.A1, S.CANC |
| [receive-retract-forward-cpr](./TestScript-carecommunication-receive-retract-forward-cpr) | R.CANC | Receive cancellation of CareCommunication due to incorrect CPR-number| retract-message | S1, S3, S.CANC |
| [receive-retract-forward-receiver](./TestScript-carecommunication-receive-retract-forward-receiver) | R.CANC | Receive cancellation of CareCommunication due to incorrect receiver| retract-message | S1, S3, S.CANC |
| [receive-retract-forward-attachment](./TestScript-carecommunication-receive-retract-forward-attachment) | R.CANC | Receive cancellation of CareCommunication due to attachment with content concerning a incorrect CPR-number | retract-message | S1, S3.A1, S.CANC |


#### Technical cases

[Test scripts for test of the receiving technical cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/)

| **Type** | **Description** | **Type** |
|---|---|---|
| [receive-tec-01](./TestScript-carecommunication-receive-tec-01) | Receive new CareCommunication for a deceased patient | R1 |
| [receive-tec-02](./TestScript-carecommunication-receive-tec-02) | Receive new CareCommunication with all MustSupport content (without attachments)| R1 |
| [receive-tec-03](./TestScript-carecommunication-receive-tec-03) | Receive newCareCommunication, receive CareCommunication (positiv dublet) | R1, R1 |
| [receive-tec-04](./TestScript-carecommunication-receive-tec-04) | Receive invalid CareCommunication, receive invalid CareCommunication (negative dublet) | - |
| [receive-tec-05](./TestScript-carecommunication-receive-tec-05) | Receive CareCommunications in wrong order (correction) | R.CORR, R.1 |
| [receive-tec-06](./TestScript-carecommunication-receive-tec-06) | Receive CareCommunications in wrong order (cancellation) | R.CANC, R.1 |
| [receive-tec-07](./TestScript-carecommunication-receive-tec-07) | Receive new CareCommunication with specific sender and recipient included | R1 |


 -->