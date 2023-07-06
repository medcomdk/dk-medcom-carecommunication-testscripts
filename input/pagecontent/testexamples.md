The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). 

[TEST of getting testexamples](./Binary-new-message_A.zip)

#### Test patient/citizens
All examples include are based on the test patient:
* Name: Elmer
* CPR-nr.: 250947-9989

#### Test examples for sending a CareCommunication

|  Test example     |     Description     | Used for test of use case |
|---|---|
| [new-message_A](./Bundle-94de89c4-1d41-4e35-b535-14d0c198fec7.html) | A new CareCommunication   | S2 Reply CareCommunication|
| [new-message_B](./Bundle-8887f191-498f-4056-941e-76ac471a8321.html) | A new CareCommunication with attachments  | S2.A1 Reply CareCommunication with attachments|
| [new-message_C](./Bundle-b9d70cd1-e368-4552-85a9-ab8b68482fec.html) | A new CareCommunication| S2.A2 Reply CareCommunication change category and topic |
| FHIR_D[^1] | A FHIR message  |  S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication|
| OIOXML_D[^2] | An OIOXML message |  S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication|
| [new-message_E](./Bundle-79036635-8f3a-40be-a3d8-81f7abb6a3e4.html) | A new CareCommunication  | S3 Forward CareCommunication |
| [new-message_F](./Bundle-87d8419d-374f-4893-b918-68a29c472398.html) | A new CareCommunication with attachments  | S3.A1 Forward CareCommunication with attachments|
| [new-message_G](./Bundle-6d185767-2168-48f4-a79f-75db4924eaa2.html) | A new CareCommunication | S3.A2 Forward CareCommunication change category and topic|
| [reply-message_H](./Bundle-ad3c34d7-6413-4432-b48d-3422fc5a4ce5.html) | A replied message | S3.A3 Forward a selected part of a CareCommunication thread|

[^1]: Currently no MedCom FHIR message that is relevant to reply exists. An example will be provided when relevant.
[^2]: A referal, discharge letter or another relevant OIOXML message may be selected here. 

#### Test examples for receiving a CareCommunication

|  Test example     |     Description     | Used for test of use case |
|---|---|---|
| [new-message_A](./) | A new CareCommunication  | R1 Receive CareCommunication|
| [reply-message_B](./) | A replied message |R2 Receive a replied CareCommunication |
| [forward-message_C](./) | A forwarded message | R3 Receive a forwarded CareCommunication|
| [new-message_D](./) | A new CareCommunication   | R.CANC Receive a cancellation of a previous CareCommunication |
| [cancel-message_D](./) | A cancellation message  |R.CANC Receive a cancellation of a previous CareCommunication |
| [new-message_E](./) | A new CareCommunication| R.CANC Receive a cancellation of a previous CareCommunication |
| [correction-message_E](./) | A correction message| R.CANC Receive a cancellation of a previous CareCommunication |
| [cancel-message_E](./) | A cancellation message |R.CANC Receive a cancellation of a previous CareCommunication |
| [new-message_F](./) | A new CareCommunication | R.CANC Receive a cancellation of a previous CareCommunication|
| [correction-message_F](./) | A correction message | R.CANC Receive a cancellation of a previous CareCommunication|
| [cancel-message_F](./) | A cancellation message| R.CANC Receive a cancellation of a previous CareCommunication |
| [new-message_G](./) | A new CareCommunication |R.CORR Receive a correction of a previous CareCommunication |
| [correction-message_G](./) | A correction message | R.CORR Receive a correction of a previous CareCommunication|
| [TEK_STIN_A](./) | A new CareCommunication |receiving a CareCommunication and sending an Acknowledgement |
| [TEK_Cancel_B](./) | A cancellation message  |received before the cancelled message has arrived |
| [TEK_New_B](./) | A new CareCommunication  | received after the cancellation message has arrived|
| [TEK_Modify_C](./) | A correction message  | received before the corrected message has arrived|
| [TEK_New_C](./) | A new CareCommunication  | received after the correction message has arrived|
| [TEK_DUB1_D](./) | A new CareCommunication  | receivedtest of dublicates|
| [TEK_DUB2_D](./) | A new CareCommunication  |receivedtest of dublicates |
| [TEK_DUB1_E](./) | An invalid new CareCommunication |receivedtest of dublicates |
| [TEK_DUB2_E](./) | An invalid new CareCommunication | receivedtest of dublicates|
| [TEK_FCC_E](./) | A new CareCommunication  | received without the element Communication.category|



