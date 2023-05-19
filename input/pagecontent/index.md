### Background

This Implementation Guide (IG) has two purposes: 1) to present test scripts for sending and receiving CareCommunications v. 2.1.0 are included, and 2) to present test examples used in the testprotocol for sending and receiving CareCommunications.

The purpose of the CareCommunication is to support digital communication between parties within healthcare, including amongst others the psychiatric and social area. The CareCommunication is used to ensure secure electronic communication of personally identifiable information and is most often used for ad hoc communication.

Both test scripts and test examples are developed by MedCom. 

#### Relevant information

The following pages will most likely be of interest when implementing CareCommunications, as they contain relevant information:
* [GitHub-pages for CareCommunications](https://medcomdk.github.io/dk-medcom-carecommunication)
  * [Testprotocol for sending and receiving CareCommunications](https://medcomdk.github.io/dk-medcom-carecommunication/#2-test-and-certification)
* [Implementation Guide for CareCommunication v. 2.1.0](https://medcomfhir.dk/ig/carecommunication/2.1.0)
* [Governance for MedCom FHIR messaging](https://medcomdk.github.io/MedCom-FHIR-Communication/)

### Governance
A description of <a href="https://medcomdk.github.io/MedComLandingPage/#4-change-management-and-versioning">governance concerning change management and versioning of MedComs FHIR artefacts, can be found on here</a>.

#### Download
Content in this IG can be downloaded under the tab [Download](downloads.html). The download includes both test scripts and test examples. It is also possible to download each artifact, on the individual page.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG there are some errors and warnings. An instance of the errors are: *Unable to resolve resource with reference '/FHIRSandbox/MedCom/carecommunicationTMS/carecommunication-fixture-new-message.xml* and *Unable to resolve resource with reference 'http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-carecommunication-message'*. The errors occur when creating a test script, as the fixture and profile are not reachable in the IG. However, they are reachable from TouchStone, why it is of less concern. For vendors who uses the test scripts locally should be aware of the error and e.g. create the fixtures and define the profile locally.

#### Contact
<a href="https://www.medcom.dk/">MedCom</a> is responsible for this IG.

If you have any questions, please contact <a href="mailto:fhir@medcom.dk">fhir@medcom.dk</a> or write to MedCom’s stream in <a href="https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup">Zulip</a>.