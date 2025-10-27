The examples presented below are intended to be used in the test protocol for sending and receiving CareCommunication. Testprotocols can be found on the [GitHub pages for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification). 

*Note: The narrative text in the test examples is not representative of what should be included in the narrative. Find [MedCom Governance for narratives here](https://medcomdk.github.io/MedComLandingPage/assets/documents/GeneralGovernanceFHIRStandards.html)*


### Test patient/citizens
All examples include are based on the test patient:
* Name: Bruno Test Elmer
* CPR-no.: 2509479989
and 
* Name: Peter Hansen
* E-CPR: 0703921VJ5
and 
* Name: Peter (unknown family name)
* E-CPR: 1206550VK9

### Naming Convention for Test Examples
All test examples follow a structured naming convention to ensure clarity and consistency:

`<S|R>-<ScenarioLetter>-<MessageType>-<UUID>`

* S / R → Indicates whether the example represents a Send (S) or Receive (R) scenario.
* ScenarioLetter → A letter (A, B, C, …) identifying the sequence or scenario number.
* MessageType → Describes the type of message, e.g. new, reply, forward.
* UUID → A unique identifier (Bundle ID) ensuring that every example name is globally unique.

### Test examples for sending a CareCommunication

[Download test examples for sending a CareCommunication (.zip)](input\attachments\SendExamples.zip)


### Test examples for receiving a CareCommunication

[Download test examples for receiving a CareCommunication (.zip)](input\attachments\ReceiveExamples.zip)

