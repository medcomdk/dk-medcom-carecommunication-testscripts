The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification, both self- and live test. Further, the test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts presented in this IG are all based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). TouchStone and an application programming interface (API), e.g. Postman or the system under test (SUT), are used to execute the testscripts. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-carecommunication/#12-use-cases) will be referenced throughout this IG and they are the basis for the tests. 

In addition to test scripts based on the use cases, test scripts testing the technical aspects are included. They will focus on the technical tests and will of course only test within the boundaries of the CareCommunication standard and governance. All tests are used to support the test protocols for sending and receiving CareCommunications. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account on TouchStone and to create a test system in TouchStone. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Test script naming
When executing send and receive test scripts it is required that SUT has executed one or more use cases in advance. These use cases are listed in the 'Precondition' columns in the tables. 

**Use cases:** The name of the test scripts is constituted by CareCommunication_Testscript_[send/receive]-[type], describing the type of messages being sent, or received. For instance CareCommunication_Testscript_send-new-message. 'CareCommunication_Testscript_[send/receive]-' is not shown in the tables below.

**Technical cases:** The name of the test scripts is constituted by CareCommunication_Testscript_[send/receive]-[tec]-[number]. For instance CareCommunication_Testscript_send-tec-02. 'CareCommunication_Testscript_[send/receive]-' is not shown in the tables below. 

#### Test examples../Fixtures 

Test examples are, in TouchStone testing, called fixtures. When testing the CareCommunication standard, the fixtures will be previously sent CareCommunications or an OIOXML message in few cases. The fixtures are already uploaded to TouchStone. During setup of a test, all relevant fixtures will automatically be uploaded to the server that is used during test. From an API it is possible to request relevant fixture. This is a part of the send and receive test scripts.  

Timestamps in most fixtures are sent between the DD-MM-YYYY and DD-MM-YYYY. All corrections and cancellation messages are sent one hour after the message it revises or cancels.

All fixtures are based on the test patient:
* Family name: Elmer
* CPR-nr.: 250947-9989 

##### Placeholders
[Placeholders](https://touchstone.aegis.net/touchstone/userguide/html/testscript-authoring/placeholders.html?highlight=placeholder) are used in the fixtures. Placeholders are used to ensure uniqueness in a fixture, and to ensure that vendors testing at the same time won't interfere with eachother. 

**UUID:**
Bundle.id will be generate during the test setup. The following line is included in the fixtures.
  `<id value="${UUID}"/>`
Which results in the following being generated during setup. For instance: 
  `<id value="87f20b5a-211b-4100-9fcc-6cd534c85d52"/>`

**Digits:**
MessageHeader.destination.endpoint and id of the MessageHeader, used in the elements MessageHeader.id, Provenance.target and Provenance.entity.what, includes the placeholder D6. 
The following line is included in the fixtures.
  `<id value="hefc6d95-6161-4493-99c9-f35948${D6}"/>` or `<endpoint value="https://sor2.sum.dsdn.dk/#id=953741000016009${D6}"/>`. <br>
Which results in the following being generated during setup. For instance: 
  `<id value="b9b4818e-02de-4cc4-b418-d20cbc399006"/>` or `<endpoint value="https://sor2.sum.dsdn.dk/#id=953741000016009"/>`

#### Operations

**POST:** 
When sending a CareCommunication, a POST operation is required for all types of messages and is therefore valid for both the precondition messages and actual messages being tested. The POST operation is used from the API and each posted message will be validated against the CareCommunication IG and different asserts for the given use case.  

**GET:**
When searching for a CareCommunication message, the GET operation requires a variable to search for a specific message. The variable used in the request is constituted by client information and two search parameters 1) the MessageHeader.destination.endpoint with placeholder ${D6}, and 2) the Bundle.id. 

In the test scripts, the search parameter are: 
  `"params": "?message.destination-uri=${destinationUri-STIN}&amp;member._id=${bundleid-STIN}"`
Which results in the following variable to be used in the GET operation. For instance: 
  `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle?message.destination-uri=https://sor2.sum.dsdn.dk/#id=953741000016009399006&amp;member._id=b9b4818e-02de-4cc4-b418-d20cbc399006`


### Send CareCommunication test scripts
To execute all the test scripts below, both POST and GET operations must be used. 

#### Use Cases

[Test scripts for test of sending use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/)

| **Type** | **Use case <br> code** | **Description** | **Activity** | **Precondition use case** |
|---|---|---|---|---|
| **New message** |  |  |  |  |
| [new-message](./TestScript-carecommunication-send-new-message) | S1 | Send CareCommunication  | new-message |  |
| [new-attachment](./TestScript-carecommunication-send-new-attachment) | S1.A1 | Send CareCommunication with attached files [^1] | new-message |  |
| [new-topic](./TestScript-carecommunication-send-new-topic) | S1.A2 | Send CareCommunication with topic | new-message |  |
| [new-formatted-text](./TestScript-carecommunication-send-ew-formatted-text)[^2] | S1.A3 | Send CareCommunication with formatted text and table | new-message |  |
| [new-category-other](./TestScript-carecommunication-send-new-category-other) | S1.A5 | Send CareCommunication with category 'Other'| new-message | |
| [new-priority](./TestScript-carecommunication-send-new-priority) | S1.A6 | Send CareCommunication with category 'Regarding referral' <br> and included priority| new-message |  |
| **Reply** |  |  |  |  |
| [reply-message](./TestScript-carecommunication-send-reply-message) | S2 | Reply CareCommunication | reply-message | R1 |
| [reply-attachment](./TestScript-carecommunication-send-reply-attachment) | S2.A1 | Reply CareCommunication with attached files [^1] | reply-message | R1 |
| [reply-changecategory](./TestScript-carecommunication-send-reply-changecategory) | S2.A2 | Reply CareCommunication with changed category | reply-message | R1 |
| [reply-changetopic](./TestScript-carecommunication-send-reply-changetopic) | S2.A2 | Reply CareCommunication with changed topic | reply-message | R1 |
| <span style="color: grey;">reply-oioxmlmessage</span> | <span style="color: grey;">S2.A3</span>  | <span style="color: grey;">Reply to OIOXML</span> | <span style="color: grey;">reply-message</span> | <span style="color: grey;">R1 (OIOXML-message)</span> |
| <span style="color: grey;">reply-fhirmessage</span> | <span style="color: grey;">S2.A3</span>  | <span style="color: grey;">Reply to FHIR message</span> | <span style="color: grey;">reply-message</span> | <span style="color: grey;">R1 (FHIR-message)</span> |
| **Forward** |  |  |  |  |
| [forward-message](./TestScript-carecommunication-send-forward-message) | S3 | Forward CareCommunication | forward-message | R1 |
| [forward-attachment](./TestScript-carecommunication-send-forward-attachment) | S3.A1 | Forward CareCommunication with attached files [^1] | forward-message | R1 |
| [forward-changecategory](./TestScript-carecommunication-send-forward-changecategory) | S3.A2 | Forward CareCommunication with changed category | forward-message | R1 |
| [forward-changetopic](./TestScript-carecommunication-send-forward-changetopic) | S3.A2 | Forward CareCommunication with changed topic | forward-message | R1 |
| [forward-partialthread](./TestScript-carecommunication-send-forward-partialthread)[^2] | S3.A3 | Forward a part of the CareCommunication thread | forward-message | R1 |
| **Modify** |  |  |  |  |
| [modify-new](./TestScript-carecommunication-send-modify-new) | S.CORR | Correct text of a new CareCommunication  | modify-message | S1 |
| [modify-new-category](./TestScript-carecommunication-send-modify-new-category) | S.CORR | Correct category of a new CareCommunication  | modify-message | S1 |
| [modify-new-topic](./TestScript-carecommunication-send-modify-new-topic) | S.CORR | Correct topic of a new CareCommunication  | modify-message | S1.A2 |
| [modify-new-attachment](./TestScript-carecommunication-send-modify-new-attachment) | S.CORR | Correct with attached files of a new CareCommunication | modify-message | S1.A1 |
| [modify-new-formatted-text](./TestScript-carecommunication-send-modify-new-formatted-text)[^2] | S.CORR | Correct formatted text and table of a new CareCommunication | modify-message | S1.A3 |
| [modify-new-category-other](./TestScript-carecommunication-send-modify-new-category-other) | S.CORR | Correct category of a new CareCommunication from 'Other'  | modify-message | S1.A5 |
| [modify-new-priority](./TestScript-carecommunication-send-modify-new-priority) | S.CORR | Correct category from 'Regarding referral'  | modify-message | S1.A6 |
| [modify-new-to-category-other](./TestScript-carecommunication-send-modify-new-to-category-other) | S.CORR | Correct category of a new CareCommunication to 'Other'  | modify-message | S1.A5 |
| [modify-new-to-priority](./TestScript-carecommunication-send-modify-new-to-priority) | S.CORR | Correct priority of a new CareCommunication to 'Regarding referral'  | modify-message | S1.A6 |
| [modify-reply](./TestScript-carecommunication-send-modify-reply) | S.CORR | Correct text of a reply CareCommunication | modify-message | R1, S2 |
| [modify-reply-changecategory](./TestScript-carecommunication-send-modify-reply-changecategory) | S.CORR | Correct category of a reply CareCommunication| modify-message | R1, S2.A2 |
| [modify-reply-changetopic](./TestScript-carecommunication-send-modify-reply-changetopic) | S.CORR | Correct topic of a reply CareCommunication | modify-message | R1, S2.A2 |
| [modify-reply-attachment](./TestScript-carecommunication-send-modify-reply-attachment) | S.CORR | Correct attached files of a reply CareCommunication | modify-message | R1, S2.A1 |
| <span style="color: grey;">modify-reply-oioxmlmessage</span> | <span style="color: grey;">S.CORR</span>  | <span style="color: grey;">Correct reply to OIOXML</span> | <span style="color: grey;">modify-message</span> | <span style="color: grey;">R1 (OIOXML-message), S2.A3</span> |
| <span style="color: grey;">modify-reply-fhirmessage</span> | <span style="color: grey;">S.CORR</span>  | <span style="color: grey;">Correct reply to FHIR message</span> | <span style="color: grey;">modify-message</span> | <span style="color: grey;">R1 (FHIR-message), S2.A3</span> |
| [modify-forward-message](./TestScript-carecommunication-send-modify-forward-message) | S.CORR | Correct text of a forward CareCommunication | modify-message | R1, S3 |
| [modify-forward-attachment](./TestScript-carecommunication-send-modify-forward-attachment) | S.CORR | Correct attaches files of a forward CareCommunication | modify-message | R1, S3.A1 |
| [modify-forward-changecategory](./TestScript-carecommunication-send-modify-forward-changecategory) | S.CORR |Correct category of a forward CareCommunication | modify-message | R1, S3.A2 |
| [modify-forward-changetopic](./TestScript-carecommunication-send-modify-forward-changetopic) | S.CORR | Correct topic of a forward CareCommunication | modify-message | R1, S3.A2 |
| **Retract** |  |  |  |  |
| [retract-new-cpr](./TestScript-carecommunication-send-retract-new-cpr) | S.CANC | Cancel a new CareCommunication due to incorrect CPR-number | retract-message | S1 |
| [retract-new-receiver](./TestScript-carecommunication-send-retract-new-receiver) | S.CANC | Cancel a new CareCommunication due to incorrect receiver | retract-message | S1 |
| [retract-new-attachment](./TestScript-carecommunication-send-retract-new-attachment) | S.CANC | Cancel a new CareCommunication due to attachment with content <br> concerning an incorrect CPR-number | retract-message | S1.A1 |
| [retract-reply-cpr](./TestScript-carecommunication-send-retract-reply-cpr) | S.CANC | Cancel a reply CareCommunication due to incorrect CPR-number | retract-message | R1, S2 |
| [retract-reply-receiver](./TestScript-carecommunication-send-retract-reply-receiver) | S.CANC | Cancel a reply CareCommunication due to incorrect receiver | retract-message | R1, S2 |
| [retract-reply-attachment](./TestScript-carecommunication-send-retract-reply-attachment) | S.CANC | Cancel a reply CareCommunication due to incorrect attachment with content <br>concerning an incorrect CPR-number | retract-message | R1, S2.A1 |
| [retract-forward-cpr](./TestScript-carecommunication-send-retract-forward-cpr) | S.CANC | Cancel a forward CareCommunication due to incorrect CPR-number| retract-message | R1, S3 |
| [retract-forward-receiver](./TestScript-carecommunication-send-retract-forward-receiver) | S.CANC | Cancel a forward CareCommunication due to incorrect receiver| retract-message | R1, S3 |
| [retract-forward-attachment](./TestScript-carecommunication-send-retract-forward-attachment) | S.CANC | Cancel a forward CareCommunication due to incorrect attachment with content <br> concerning an incorrect CPR-number | retract-message | R1, S3.A1 |


#### Technical cases

[Test scripts for test of sending technical cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/)

| **Type** | **Description** | **Activity/activities** |
|---|---|---|
| [tec-01](./TestScript-carecommunication-send-tec-01) | Send CareCommunication with sender and recipient | S1 |
| [tec-02](./TestScript-carecommunication-send-tec-02) | Send CareCommunication, where the receive is 'Plejecenter Herlev' with GLN-number '5790001348120' | S1 |
| <span style="color: grey;">tec-03</span> | <span style="color: grey;">Send CareCommunication with the maximum length in the text of the message segment</span> | <span style="color: grey;">S1</span> |
| [tec-04](./TestScript-carecommunication-send-tec-04)[^2] | Send CareCommunication with attachment and an associated structured signature | S1.A1 |
| [tec-05](./TestScript-carecommunication-send-tec-05) | Send CareCommunication with episodeOfCareID | S1 |
| [tec-06](./TestScript-carecommunication-send-tec-06) | Reply to CareCommunication, where episodeOfCare-identifier is correctly transfered in the communication | R1, S2 |
| [tec-07](./TestScript-carecommunication-send-tec-07) | Cancel CareCommunication which has already been corrected. Expected to cancel the entire thread. | S1, S.CORR, S.CANC |
| [tec-08](./TestScript-carecommunication-send-tec-08) | Send CareCommunication, send CareCommunication as the first wasn't acknowledged | S1, S1 |
| [tec-09](./TestScript-carecommunication-send-tec-09) | Send CareCommunication, including a messagesegment as a URL to a website | S1|
| [tec-10](./TestScript-carecommunication-send-tec-10) | Send CareCommunication concerning a deceased patient | S1|


<!-- | [tec-04](./TestScript-carecommunication-receive-) | Send CareCommunication with special signs, including #!%{[]}<>*^@"' | S1 | -->

[^1]: Include one attachment of each mimetype.
[^2]: This test script is only relevant, if the system supports the given use case.


### Receive CareCommunication test scripts
When receiving a CareCommunication, a GET operation is required for all types of messages, valid for both the precondition messages and actual messages being tested. 

#### Use Cases

[Test scripts for test of the recieving use cases, can be found here in TouchStone.](https://touchstone.aegis.net/touchstone/)

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
| <span style="color: grey;">receive-reply-edifactmessage</span> | | <span style="color: grey;">R1</span> |  <span style="color: grey;">Receive reply to EDIFACT message</span> | <span style="color: grey;">S2.A3 (EDIFACT-message)</span> |
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
| <span style="color: grey;">receive-modify-reply-edifactmessage</span> | | <span style="color: grey;">R1</span> |  <span style="color: grey;">Receive reply to EDIFACT message</span> | <span style="color: grey;">S2.A3 (EDIFACT-message)</span> |
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
| [tec-01](./TestScript-carecommunication-receive-tec-01) | Receive new CareCommunication for a deceased patient | R1 |
| [tec-02](./TestScript-carecommunication-receive-tec-02) | Receive new CareCommunication with all MustSupport content (without attachments)| R1 |
| [tec-03](./TestScript-carecommunication-receive-tec-03) | Receive newCareCommunication, receive CareCommunication (positiv dublet) | R1, R1 |
| [tec-04](./TestScript-carecommunication-receive-tec-04) | Receive invalid CareCommunication, receive invalid CareCommunication (negative dublet) | - |
| [tec-05](./TestScript-carecommunication-receive-tec-05) | Receive CareCommunications in wrong order (correction) | R.CORR, R.1 |
| [tec-06](./TestScript-carecommunication-receive-tec-06) | Receive CareCommunications in wrong order (cancellation) | R.CANC, R.1 |
| [tec-07](./TestScript-carecommunication-receive-tec-07) | Receive new CareCommunication with specific sender and recipient included | R1 |


