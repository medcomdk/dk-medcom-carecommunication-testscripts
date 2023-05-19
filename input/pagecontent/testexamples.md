The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for HospitalNotificaton](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). All test examples are created by MedCom. 

#### Test patient/citizens
All examples include are based on the test patient:
* Name: Elmer
* CPR-nr.: 250947-9989

#### Test examples for sending a CareCommunication

|  Test example     |     Description     |
|---|---|
| [new-message_A](./) | A new message used for S2 Reply CareCommunication  |
| [new-message_B](./) | A new message with attachments used for S2.A1 Reply CareCommunication with attachments |
| [new-message_C](./) | A new message used for S2.A2 Reply CareCommunication change category and topic|
| [FHIR_D](./) | A FHIR message used for S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication |
| [OIOXML_D](./) | An OIOXML message used for S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication|
| [EDIFACT_D](./) | An EDIFACT message used for S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication|
| [new-message_E](./) | A new message used for S3 Forward CareCommunication  |
| [new-message_F](./) | A new message with attachments used for S3.A1 Forward CareCommunication with attachments |
| [new-message_G](./) | A new message used for S3.A2 Forward CareCommunication change category and topic|
| [reply-message_H](./) | A replied message used for S3.A3 Forward a selected part of a CareCommunication thread|

#### Test examples for receiving a CareCommunication

|  Test example     |     Description     |
|---|---|
| [new-message_A](./) | A new message used for R1 Receive CareCommunication  |
| [reply-message_B](./) | A replied message used for R2 Receive a replied CareCommunication |
| [forward-message_C](./) | A forwarded message used for R3 Receive a forwarded CareCommunication |
| [new-message_D](./) | A new message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [cancel-message_D](./) | A cancellation message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [new-message_E](./) | A new message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [correction-message_E](./) | A correction message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [cancel-message_E](./) | A cancellation message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [new-message_F](./) | A new message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [correction-message_F](./) | A correction message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [cancel-message_F](./) | A cancellation message used for R.CANC Receive a cancellation of a previous CareCommunication |
| [new-message_G](./) | A new message used for R.CORR Receive a correction of a previous CareCommunication |
| [correction-message_G](./) | A correction message used for R.CORR Receive a correction of a previous CareCommunication |
| [TEK_STIN_A](./) | A new message used for receiving a CareCommunication and sending an Acknowledgement |
| [TEK_Cancel_B](./) | A cancellation message received before the cancelled message has arrived |
| [TEK_New_B](./) | A new message received after the cancellation message has arrived |
| [TEK_Modify_C](./) | A correction message received before the corrected message has arrived |
| [TEK_New_C](./) | A new message received after the correction message has arrived |
| [TEK_DUB1_D](./) | A new message received used for test of dublicates |
| [TEK_DUB2_D](./) | A new message received used for test of dublicates |
| [TEK_DUB1_E](./) | An invalid new message received used for test of dublicates |
| [TEK_DUB2_E](./) | An invalid new message received used for test of dublicates |
| [TEK_FCC_E](./) | A new message received without the element Communication.category |



