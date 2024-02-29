The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). 


#### Test patient/citizens
All examples include are based on the test patient:
* Name: Bruno Test Elmer
* CPR-no.: 2509479989
and 
* Name: Peter Unknown
* E-CPR: 1206550VK9

#### Test examples for sending a CareCommunication

[Download test examples for sending a CareCommunication (.zip)](./TestExamples/CareCommunication_Ex_send.zip)

|  Test example     |     Description     | 
|---|---|
| [CareCommunication_Ex_send-A-new](./Bundle-1932711d-49d0-4ad7-b1ee-61de711892d2.html) | A new CareCommunication. Including long journal note, specifik sender and recipient, topic, prioritet, attachment structured author information.  |
| [CareCommunication_Ex_send-B-new](./Bundle-720f68cf-21bf-4c40-a90c-a113e00e88a8.html) | A new CareCommunication. ContentString includes escaped signs and without sender and receiver name.| 
| [CareCommunication_Ex_send-C-new-attachment](./Bundle-683f2782-11e2-490a-9fa5-d5da09cc317a.html) | A new CareCommunication with attachment.  | 
| [CareCommunication_Ex_send-D-new-attachment](./Bundle-5f85e1bd-03ea-47b9-bfe1-dbde95e69c75.html) | A new CareCommunication with attachment.  | 
| [CareCommunication_Ex_send-E-new](./Bundle-81b715aa-e993-4e7c-9b8a-4a05c10b540e.html) | A new CareCommunication. | 
| [CareCommunication_Ex_send-F-new-change](./Bundle-9c2371ff-09a0-4626-9fb9-f70645546361.html) | A new CareCommunication. | 
| G-EDIFACT[^1] | An EDIFACT message   |
| G-OIOXML[^2] | An OIOXML message |  
| [CareCommunication_Ex_send-H-new](./Bundle-.html) | A new CareCommunication. Patient has a replacement CPR (e-CPR).| 
| [CareCommunication_Ex_send-I-new-attachment](./Bundle-.html) | A new CareCommunication with attachment  | 
| [CareCommunication_Ex_send-J-new-change](./Bundle-.html) | A new CareCommunication. |
| [CareCommunication_Ex_send-K-new](./Bundle-.html) | A new CareCommunication. | 
| [CareCommunication_Ex_send-Tek-A-new-episodeOfCare](./Bundle-.html) | A new CareCommunication with an EpisodeOfCare-identifier. |
| [CareCommunication_Ex_send-Tek-B-new-episodeOfCare](./Bundle-.html) | A new CareCommunication with an EpisodeOfCare-identifier.  | 

[^1]: Currently, no MedCom FHIR message that is relevant to reply exists. An example will be provided when relevant.
[^2]: A referal, discharge letter or another relevant OIOXML message may be selected here. 

#### Test examples for receiving a CareCommunication

[Download test examples for receiving a CareCommunication (.zip)](./TestExamples/CareCommunication_Ex_receive.zip)

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
| [receive-new-message_G](./Bundle-a4c0dfda-cc56-4b7b-8646-fa9904c429c4) | A new CareCommunication | R.CORR Receive a correction of a previous CareCommunication |
| [receive-modify-message_G](./Bundle-3ed65285-99ee-4479-86b5-360cc475a9a8) | A correction message | R.CORR Receive a correction of a previous CareCommunication|
| [receive-TEK_new-message_A](./Bundle-8d60b469-b679-42ea-9539-d88075881e8e) | A new CareCommunication | R1 Receive a CareCommunication and sending an Acknowledgement |
| [receive-TEK_retract-message_B](./Bundle-51083675-92ea-4bb0-872d-10ad047253fa) | A cancellation message  |R.CANC Receive before the cancelled message has arrived |
| [receive-TEK_new-message_B](./Bundle-5dd78bc4-4db6-4ddb-894c-5fe492c21ac4) | A new CareCommunication  | R.CANC Receive after the cancellation message has arrived|
| [receive-TEK_modify-message_C](./Bundle-ddc3894e-6139-4ce7-a090-2c0c4871f341) | A correction message  | R.CORR Receive before the corrected message has arrived|
| [receive-TEK_new-message_C](./Bundle-43627b1b-dcc8-42a4-a095-99ae60d515e9) | A new CareCommunication  | R.CORR Receive after the correction message has arrived|
| [receive-TEK_DUB1_D](./Bundle-51a74b4a-18a7-442b-aea3-b8788ee88588) | A new CareCommunication  | Receive test of dublicates|
| [receive-TEK_DUB2_D](./Bundle-50e8918d-b361-4b14-938f-4874e10f3948) | A new CareCommunication  | Receive test of dublicates |
| [receive-TEK_DUB1_E](./Bundle-591a64d8-495f-417a-9835-934c7da8bbf6) | An invalid new CareCommunication | Receive test of dublicates |
| [receive-TEK_DUB2_E](./Bundle-09ac721c-8c40-4fe9-a8b6-180e7e392ea7) | An invalid new CareCommunication | Receive test of dublicates|
| [receive-TEK_FCC_E](./Bundle-eb9381ba-8cb4-4103-b38e-5087894adc72) | A new CareCommunication  | Receive without the element Communication.category|

