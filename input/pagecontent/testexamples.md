The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). 


#### Test patient/citizens
All examples include are based on the test patient:
* Name: Bruno Test Elmer
* CPR-no.: 2509479989
and 
* Name: Peter Hansen
* E-CPR: 0703921VJ5
and 
* Name: Peter (unknown family name)
* E-CPR: 1206550VK9


#### Test examples for sending a CareCommunication

[Download test examples for sending a CareCommunication (.zip)](./TestExamples/CareCommunication_Ex_send.zip)

|  Test example     |     Description     | 
|---|---|
| [CareCommunication_Ex_send-A-new](./Bundle-1932711d-49d0-4ad7-b1ee-61de711892d2.html) | A new CareCommunication. Including long journal note, specifik sender and recipient, topic, prioritet, attachment with structured author information.|
| [CareCommunication_Ex_send-B-new-attachment](./Bundle-720f68cf-21bf-4c40-a90c-a113e00e88a8.html) | A new CareCommunication with attachment.| 
| [CareCommunication_Ex_send-C-new-attachment](./Bundle-683f2782-11e2-490a-9fa5-d5da09cc317a.html) | A new CareCommunication with attachment. | 
| [CareCommunication_Ex_send-D-new](./Bundle-5f85e1bd-03ea-47b9-bfe1-dbde95e69c75.html) | A new CareCommunication. ContentString includes escape signs and without sender and receiver name (Organization.name). | 
| [CareCommunication_Ex_send-E-new](./Bundle-81b715aa-e993-4e7c-9b8a-4a05c10b540e.html) | A new CareCommunication. The PractitionerRole is not from the structured list of roles. | 
| [CareCommunication_Ex_send-F-new-change](./Bundle-9c2371ff-09a0-4626-9fb9-f70645546361.html) | A new CareCommunication.  | 
| G-EDIFACT[^1] | An EDIFACT message   |
| G-OIOXML[^1] | An OIOXML message |  
| [CareCommunication_Ex_send-H-new](./Bundle-aca3d03a-febd-4b88-ad53-ac1bc36da615.html) | A new CareCommunication. Patient has a replacement CPR (e-CPR).| 
| [CareCommunication_Ex_send-I-new-attachment](./Bundle-1e9fdc8f-50f0-4dc3-9879-facdf331a2fe.html) | A new CareCommunication with attachment. Patient is deceased. | 
| [CareCommunication_Ex_send-J-new-change](./Bundle-517f89c3-c18c-47d3-b627-8c039a7756b1.html) | A new CareCommunication. Instance IDs are not UUIDs. ContentString includes line breaks (< br/ >).|
| [CareCommunication_Ex_send-K-forward](./Bundle-77c771ca-05d6-4efb-9a74-2fc513787f3a.html) | A forward CareCommunication. | 
| [CareCommunication_Ex_send-Tek-A-new-episodeOfCare](./Bundle-b43146a2-99ec-4b05-bb8f-5b44af4fe424.html) | A new CareCommunication with an EpisodeOfCare-identifier. |
| [CareCommunication_Ex_send-Tek-B-new-episodeOfCare](./Bundle-98eb081e-a66f-41a2-b2f7-c455782563b0.html) | A new CareCommunication with an EpisodeOfCare-identifier.  | 

[^1]: A referal, discharge letter or another relevant OIOXML message may be selected here. 

#### Test examples for receiving a CareCommunication

[Download test examples for receiving a CareCommunication (.zip)](./TestExamples/CareCommunication_Ex_receive.zip)

|  Test example     |     Description     | 
|---|---|
| [CareCommunication_Ex_receive_A-new](./Bundle-b10f940e-2000-4ec8-9e0b-a3fb60fc5bb5.html) | A new CareCommunication. Including long journal note, specifik sender and recipient, topic, the category 'other', attachment and associated structured author information. | 
| [CareCommunication_Ex_receive_B-reply](./Bundle-91b4b79a-520f-48cb-bb9a-9c3e27301968.html) | A reply message. The reply contains an attachment. | 
| [CareCommunication_Ex_receive_C-forward](./Bundle-8352b67a-23b2-44c5-b43a-725270a90722.html) | A forwarded message | 
| [CareCommunication_Ex_receive_Tek-A_new_priority](./Bundle-0c8dddf2-c882-4b00-8870-5035279e7d01.html) | A new CareCommunication. Including priority, escape signs and line breaks in the message text. | 
| [CareCommunication_Ex_receive_Tek-B_new_attachment](./Bundle-ee22cec7-aad7-4bfe-ab1b-5ada3f59e676.html) | A new CareCommunication. Including one of each type of attachment. | 
| [CareCommunication_Ex_receive_Tek-C-new_zulutime](./Bundle-6e5d7a74-a88a-47a3-8362-20396e9db332.html) | A new CareCommunication. The timezone is zulutime. | 
| [CareCommunication_Ex_receive_Tek-D_new_timezone](./Bundle-82875f08-4b9e-4a23-b81a-e23ec1251334.html) | A new CareCommunication. A timezone is included. | 
| [CareCommunication_Ex_receive_Tek-E_new_EpisodeOfCare-identifier](./Bundle-d000e12e-4b0c-477e-9cb7-80b2a3b3adc0.html) | A new CareCommunication. EpisodeOfCare-identifers are included. | 
| [CareCommunication_Ex_receive_Tek-F_new_deceased](./Bundle-bed699de-ae44-4fa4-8208-10a35b025476.html) | A new CareCommunication. The test patient is deceased. | 
| [CareCommunication_Ex_receive_Tek-G_new_replacementCPR](./Bundle-abfcb7c7-1381-4dba-b4b7-cc1c3713e515.html) | A new CareCommunication. The test patient has a replacement CPR. | 
| [CareCommunication_Ex_receive_Tek-H_new_ID](./Bundle-33ee6434-a9cc-4679-8bb8-4f940bd63e30.html) | A new CareCommunication. The instances in the message doesn't have UUIDs. | 
| [CareCommunication_Ex_receive_Tek-I_new_moreInfo](./Bundle-5d29cc7d-dcf7-4b50-81b1-a8d971973ff6.html) | A new CareCommunication. More information than specified in the CareCommunication standard is included. | 
| [CareCommunication_Ex_receive_Tek-J-new-noOrgName](./Bundle-68f5c0f8-e33e-4302-89b0-cdea52801ec9.html) | A new CareCommunication without name included for the sender and receiver organization. No role for the practitioner is available. | 
| [CareCommunication_Ex_receive_Tek-K-new-xml](./Bundle-4f6ee254-6953-4a57-a68e-a5907a5761dc.html) | A new CareCommunication in xml. The PractitionerRole of the is not from the list of roles. | 
| [CareCommunication_Ex_receive_Tek-L-new-json](./Bundle-6280ec98-0799-4a3a-8a66-c426207d93f1.html) | A new CareCommunication in json. The instance id's are not UUID. | 
| [CareCommunication_Ex_receive_Tek-M-new-parallel](./Bundle-c1edf6f3-2554-4b72-b58b-0f030ee555ba.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-N-reply-parallel](./Bundle-0e2864ad-a6a1-4e84-a9dc-aeacee63f981.html) | A reply CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-O-new](./Bundle-20fcbedb-ced8-4949-9edf-a145e0bb9b09.html) | A new CareCommunication. Patient is deceased. | 
| [CareCommunication_Ex_receive_Tek-P-reply-order](./Bundle-3e047a9d-c86a-4828-b686-6a80403df5eb.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-Q-new-order](./Bundle-7c5a0cc0-f0f8-4a2e-9de9-d9293598bf94.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-R-new-dublicate](./Bundle-7283eae8-0427-4bb0-8486-06b4febd416c.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-S-new-dublicate](./Bundle-c289e585-7f30-4d58-88e3-0baedd9ffeee.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-T-new-dublicate](./Bundle-5de12884-eae7-4fd3-ba4a-d8b56be4baff.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-U-new-dublicate](./Bundle-fa97e431-332f-4605-ad37-c259dc2b8637.html) | A new CareCommunication. | 
| [CareCommunication_Ex_receive_Tek-V-new-dublicate-invalid](./Bundle-260a3cc1-38eb-454a-a57b-9e32eabb54a3.html) | A new invalid CareCommunication. Missing Payload.identifier and reference from provenance.| 
| [CareCommunication_Ex_receive_Tek-X-new-dublicate-invalid](./Bundle-260f76f2-d986-4ba1-8049-2369b1b164ce.html) | A new invalid CareCommunication. Missing Payload.identifier and reference from provenance.| 
| [CareCommunication_Ex_receive_Tek-Y-new-invalid](./Bundle-3d1149cd-d3e3-421a-ae31-4860decb4272.html) | A new invalid CareCommunication. No message text is included. | 

