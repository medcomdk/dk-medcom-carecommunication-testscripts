The test scripts are created by MedCom for testing in [TouchStone](https://touchstone.aegis.net/touchstone/) during MedCom test and certification. The test scripts may be used locally by vendors in their own testsetup, e.g. during code development or test. 

Test scripts are based on the [FHIR TestScript resource](https://www.hl7.org/fhir/testscript.html). 

TouchStone and an application programming interface (API), e.g. Postman, or the system under test (SUT), are used to execute the test scripts. 

### Before getting started

Use cases described in the [use case document](https://medcomdk.github.io/dk-medcom-carecommunication/#12-use-cases) forms the basis for the tests. 

In addition to test scripts based on the use cases, test scripts testing the technical aspects are included. They will focus on the technical tests within the boundaries of the CareCommunication standard and governance. All tests are used to support the test protocols for sending CareCommunications. 

#### TouchStone and API
Before getting started with test script execution, it is necessary to have an account, be a member of MedComs Org Group, and to create a test system in TouchStone. Please follow [this guide to setup an account and test system](https://medcomdk.github.io/MedComLandingPage/assets/documents/TouchStoneGettingStarted.html).

#### Test script naming
**Use cases:** The name of the test scripts is constituted by CareCommunication_TestScript_[send]-[type], describing the type of messages being sent, for instance CareCommunication_TestScript_send-new-message.

**Technical cases:** The name of the test scripts is constituted by CareCommunication_TestScript_[send]-[tec]-[number]. For instance CareCommunication_Testscript_send-tec-02.

#### Test examples 

Test examples are, in TouchStone testing, called fixtures. When testing the CareCommunication standard, the fixtures are previously sent CareCommunications. The fixtures are already uploaded in TouchStone. During setup of a test, all relevant fixtures will automatically be uploaded to the server that is used during test. From an API it is possible to request relevant fixtures. Timestamps in fixtures are defined to be added to the fixture when the test is executed. 

All fixtures are based on the test patient:
* Name: Bruno Test Elmer
* CPR-nr.: 250947-9989 

#### Operations

When sending a CareCommunication, a POST operation is required for all types of messages, and must be used for both the preconditional messages and actual messages being sent. The POST operation should be used from the API or SUT, and each posted message will be validated against the CareCommunication IG. Further, a number of asserts will test for correct concent of the CareCommunication message. The endpoint of the POST operation depends on the setup of the testscript, but it migth be similar to: `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle`

When receiving a CareCommunication, which is the cases is a precondition, a GET operation must be used from the API or SUT. When using the GET operation a fixture will send from the server, which can be visualized in SUT.
The endpoint of the GET operation depends on the setup of the testscript, but it will be composed by the server endpoint, Resource type and id. It migth be similar to `http://touchstone.aegis.net:49917/fhir4-0-1/Bundle/b10620cb-e2e6-436e-9185-c35f7e196cea`.

### Send CareCommunication test scripts
To execute all the test scripts, both POST and GET operations must be used. 

Since forwarding is optional, the test scripts regarding forwarding are optional as well.

The Conformance suite for all CareCommunication test scripts, can be found here: [conformance test suite.](https://touchstone.aegis.net/touchstone/conformance/suites?name=FHIR4-0-1-CareCommunication-send-Client)
