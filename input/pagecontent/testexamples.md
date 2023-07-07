The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). 

[Download test](./TestExamples/CareCommunication_Ex_send.zip)

[TEST of getting testexamples](./TestExamples/CareCommunication_Ex_receive.zip)


#### Test patient/citizens
All examples include are based on the test patient:
* Name: Elmer
* CPR-nr.: 250947-9989

#### Test examples for sending a CareCommunication

|  Test example     |     Description     | Used for test of use case |
|---|---|
| [send-new-message_A](./Bundle-eb46ca59-3982-4eaf-b5eb-9ac1eaa88a31.html) | A new CareCommunication   | S2 Reply CareCommunication|
| [send-new-message_B](./Bundle-61da3914-596e-430c-8996-683b2e686e54.html) | A new CareCommunication with attachments  | S2.A1 Reply CareCommunication with attachments|
| [send-new-message_C](./Bundle-ffdd0aa5-7eb3-4297-b73f-b6dbbf8e1eb6.html) | A new CareCommunication| S2.A2 Reply CareCommunication change category and topic |
| FHIR_D[^1] | A FHIR message  |  S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication|
| OIOXML_D[^2] | An OIOXML message |  S2.A3 Reply a received FHIR, OIOXML or EDIFACT message with a CareCommunication|
| [send-new-message_E](./Bundle-94ef05ca-fa16-4029-9cb0-f3fd4208815b.html) | A new CareCommunication  | S3 Forward CareCommunication |
| [send-new-message_F](./Bundle-3ea9d0db-83c6-4730-a806-5abfb56c597e.html) | A new CareCommunication with attachments  | S3.A1 Forward CareCommunication with attachments|
| [send-new-message_G](./Bundle-96518f3d-4958-40ec-9af6-4ca83a7eebae.html) | A new CareCommunication | S3.A2 Forward CareCommunication change category and topic|
| [send-reply-message_H](./Bundle-1662dc38-e995-4dd0-ab2a-064b21256acc.html) | A replied message | S3.A3 Forward a selected part of a CareCommunication thread|

[^1]: Currently no MedCom FHIR message that is relevant to reply exists. An example will be provided when relevant.
[^2]: A referal, discharge letter or another relevant OIOXML message may be selected here. 

#### Test examples for receiving a CareCommunication

|  Test example     |     Description     | Used for test of use case |
|---|---|---|
| [receive-new-message_A](./Bundle-408bc1bd-1b11-45df-be3b-cce46896129b) | A new CareCommunication  | R1 Receive CareCommunication|
| [receive-reply-message_B](./Bundle-b31383c8-3ece-458c-9025-8f9d810b0eb3) | A replied message |R2 Receive a replied CareCommunication |
| [receive-forward-message_C](./Bundle-01c99a92-f4ea-45f9-9dba-07e071f2d7dc) | A forwarded message | R3 Receive a forwarded CareCommunication|
| [receive-new-message_D](./Bundle-fe327826-ed94-422f-8cf1-9d617e6a84fd) | A new CareCommunication   | R.CANC Receive a cancellation of a previous CareCommunication |
| [receive-retract-message_D](./Bundle-7eb8b5c6-8088-4ebc-95dd-ab759983ad28) | A cancellation message  |R.CANC Receive a cancellation of a previous CareCommunication |
| [receive-new-message_E](./Bundle-2ac8d2fe-d1b5-44d8-8778-259b025427f0) | A new CareCommunication| R.CANC Receive a cancellation of a previous CareCommunication |
| [receive-modify-message_E](./Bundle-f1cd8f5b-efd3-4670-8f3c-6f019ce87fcc) | A correction message| R.CANC Receive a cancellation of a previous CareCommunication |
| [receive-retract-message_E](./Bundle-f38e7398-11f2-4ef0-af35-088f6cad1e3d) | A cancellation message |R.CANC Receive a cancellation of a previous CareCommunication |
| [receive-new-message_F](./Bundle-4274d7f5-5e54-492c-acdd-d0d091f497f1) | A new CareCommunication | R.CANC Receive a cancellation of a previous CareCommunication|
| [receive-modify-message_F](./Bundle-470b33f5-0fad-4dd0-a478-fa01d0281284) | A correction message | R.CANC Receive a cancellation of a previous CareCommunication|
| [receive-retract-message_F](./Bundle-1dfc2652-0720-4d18-859d-fc0ed20c3be6) | A cancellation message| R.CANC Receive a cancellation of a previous CareCommunication |
| [receive-new-message_G](./Bundle-a4c0dfda-cc56-4b7b-8646-fa9904c429c4) | A new CareCommunication |R.CORR Receive a correction of a previous CareCommunication |
| [receive-modify-message_G](./Bundle-3ed65285-99ee-4479-86b5-360cc475a9a8) | A correction message | R.CORR Receive a correction of a previous CareCommunication|
| [receive-TEK_new-message_A](./Bundle-8d60b469-b679-42ea-9539-d88075881e8e) | A new CareCommunication |receiving a CareCommunication and sending an Acknowledgement |
| [receive-TEK_retract-message_B](./Bundle-51083675-92ea-4bb0-872d-10ad047253fa) | A cancellation message  |received before the cancelled message has arrived |
| [receive-TEK_New_B](./Bundle-5dd78bc4-4db6-4ddb-894c-5fe492c21ac4) | A new CareCommunication  | received after the cancellation message has arrived|
| [receive-TEK_Modify_C](./Bundle-ddc3894e-6139-4ce7-a090-2c0c4871f341) | A correction message  | received before the corrected message has arrived|
| [receive-TEK_New_C](./Bundle-43627b1b-dcc8-42a4-a095-99ae60d515e9) | A new CareCommunication  | received after the correction message has arrived|
| [receive-TEK_DUB1_D](./Bundle-51a74b4a-18a7-442b-aea3-b8788ee88588) | A new CareCommunication  | receivedtest of dublicates|
| [receive-TEK_DUB2_D](./Bundle-50e8918d-b361-4b14-938f-4874e10f3948) | A new CareCommunication  |receivedtest of dublicates |
| [receive-TEK_DUB1_E](./Bundle-591a64d8-495f-417a-9835-934c7da8bbf6) | An invalid new CareCommunication |receivedtest of dublicates |
| [receive-TEK_DUB2_E](./Bundle-09ac721c-8c40-4fe9-a8b6-180e7e392ea7) | An invalid new CareCommunication | receivedtest of dublicates|
| [receive-TEK_FCC_E](./Bundle-eb9381ba-8cb4-4103-b38e-5087894adc72) | A new CareCommunication  | received without the element Communication.category|



| [testtesttest](./Bundle-789339d0-e19b-4570-ae93-4ce4897f3199.html) | 789339d0-e19b-4570-ae93-4ce4897f3199   | S2 Reply CareCommunication|