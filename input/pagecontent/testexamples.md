The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). 


#### Test patient/citizens
All examples include are based on the test patient:
* Name: Bruno Test Elmer
* CPR-no.: 2509479989
and 
* Name: Peter Hansen
* E-CPR: 0703921VJ5

#### Test examples for sending a CareCommunication

[Download test examples for sending a CareCommunication (.zip)](./TestExamples/CareCommunication_Ex_send.zip)

|  Test example     |     Description     | 
|---|---|
| [CareCommunication_Ex_send-A-new](./Bundle-1932711d-49d0-4ad7-b1ee-61de711892d2.html) | A new CareCommunication. Including long journal note, specifik sender and recipient, topic, prioritet, attachment structured author information.|
| [CareCommunication_Ex_send-B-new-attachment](./Bundle-720f68cf-21bf-4c40-a90c-a113e00e88a8.html) | A new CareCommunication with attachment.| 
| [CareCommunication_Ex_send-C-new-attachment](./Bundle-683f2782-11e2-490a-9fa5-d5da09cc317a.html) | A new CareCommunication with attachment. | 
| [CareCommunication_Ex_send-D-new](./Bundle-5f85e1bd-03ea-47b9-bfe1-dbde95e69c75.html) | A new CareCommunication. ContentString includes escaped signs and without sender and receiver name (Organization.name). | 
| [CareCommunication_Ex_send-E-new](./Bundle-81b715aa-e993-4e7c-9b8a-4a05c10b540e.html) | A new CareCommunication. The PractitionerRole of the is not from the list of roles. | 
| [CareCommunication_Ex_send-F-new-change](./Bundle-9c2371ff-09a0-4626-9fb9-f70645546361.html) | A new CareCommunication.  | 
| G-EDIFACT[^1] | An EDIFACT message   |
| G-OIOXML[^1] | An OIOXML message |  
| [CareCommunication_Ex_send-H-new](./Bundle-aca3d03a-febd-4b88-ad53-ac1bc36da615.html) | A new CareCommunication. Patient has a replacement CPR (e-CPR).| 
| [CareCommunication_Ex_send-I-new-attachment](./Bundle-1e9fdc8f-50f0-4dc3-9879-facdf331a2fe.html) | A new CareCommunication with attachment. Patient is deceased. | 
| [CareCommunication_Ex_send-J-new-change](./Bundle-jklfds89r45jklsduf98w487953jkl.jkliuuh.html) | A new CareCommunication. Instance IDs are not UUIDs. ContentString includes line breaks (<br/>).|
| [CareCommunication_Ex_send-K-reply](./Bundle-77c771ca-05d6-4efb-9a74-2fc513787f3a.html) | A reply CareCommunication. | 
| [CareCommunication_Ex_send-Tek-A-new-episodeOfCare](./Bundle-b43146a2-99ec-4b05-bb8f-5b44af4fe424.html) | A new CareCommunication with an EpisodeOfCare-identifier. |
| [CareCommunication_Ex_send-Tek-B-new-episodeOfCare](./Bundle-98eb081e-a66f-41a2-b2f7-c455782563b0.html) | A new CareCommunication with an EpisodeOfCare-identifier.  | 

[^1]: A referal, discharge letter or another relevant OIOXML message may be selected here. 

#### Test examples for receiving a CareCommunication

[Download test examples for receiving a CareCommunication (.zip)](./TestExamples/CareCommunication_Ex_receive.zip)

|  Test example     |     Description     | Used for test of use case |
|---|---|---|
| [CareCommunication_Ex_receive_A-new](./Bundle-b10f940e-2000-4ec8-9e0b-a3fb60fc5bb5.html) | A new CareCommunication. Including long journal note, specifik sender and recipient, topic, the category 'other', attachment, structured author information. | R1 Receive CareCommunication|
| [CareCommunication_Ex_receive_B-reply](./Bundle-91b4b79a-520f-48cb-bb9a-9c3e27301968.html) | A reply message. The reply contains an attachment. | R2 Receive a replied CareCommunication |
| [CareCommunication_Ex_receive_C-forward](./Bundle-adf87886-7d96-4c9b-bd76-5abb83682819.html) | A forwarded message | R3 Receive a forwarded CareCommunication|
| [CareCommunication_Ex_receive_D-TEK_new_priority](./Bundle-0c8dddf2-c882-4b00-8870-5035279e7d01.html) | A new CareCommunication. Including priority, escapet signs and line breaks in the message text. | R1 Receive a CareCommunication and sending an Acknowledgement |
| [CareCommunication_Ex_receive_E-tek-new-noOrgName](./Bundle-68f5c0f8-e33e-4302-89b0-cdea52801ec9.html) | A new CareCommunication without name included for the sender and receiver organization. No role for the practitioner is available. |R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_F-tek-new-xml](./Bundle-4f6ee254-6953-4a57-a68e-a5907a5761dc.html) | A new CareCommunication in xml. The PractitionerRole of the is not from the list of roles. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_G-tek-new-json](./Bundle-ddc3894e-6139-4ce7-a090-2c0c4871f341.html) | A new CareCommunication in json. The instance id's are not UUID. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_H-tek-new-parallel](./Bundle-c1edf6f3-2554-4b72-b58b-0f030ee555ba.html) | A new CareCommunication. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_I-tek-reply-parallel](./Bundle-0e2864ad-a6a1-4e84-a9dc-aeacee63f981.html) | A reply CareCommunication. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_J-tek-new](./Bundle-20fcbedb-ced8-4949-9edf-a145e0bb9b09.html) | A new CareCommunication. Patient is deceased. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_K-tek-reply-order](./Bundle-3e047a9d-c86a-4828-b686-6a80403df5eb.html) | A new CareCommunication. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_L-tek-new-order](./Bundle-7c5a0cc0-f0f8-4a2e-9de9-d9293598bf94.html) | A new CareCommunication. Patient has a replacement CPR. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_M-tek-new-dublicate](./Bundle-7283eae8-0427-4bb0-8486-06b4febd416c.html) | A new CareCommunication. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_N-tek-new-dublicate](./Bundle-c289e585-7f30-4d58-88e3-0baedd9ffeee.html) | A new CareCommunication. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_O-tek-new-dublicate](./Bundle-5de12884-eae7-4fd3-ba4a-d8b56be4baff.html) | A new CareCommunication. | R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_P-tek-new-dublicate](./Bundle-260a3cc1-38eb-454a-a57b-9e32eabb54a3.html) | A new invalid CareCommunication. Missing Payload.identifier and reference from provenance.| R1 Receive a CareCommunication |
| [CareCommunication_Ex_receive_Q-tek-new-invalid](./Bundle-fa97e431-332f-4605-ad37-c259dc2b8637.html) | A new invalid CareCommunication. No message text is included. | R1 Receive a CareCommunication |

