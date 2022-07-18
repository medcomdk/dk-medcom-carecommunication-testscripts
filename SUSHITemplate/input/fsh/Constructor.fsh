//opstart testscript med meta information og beskrivelse

Instance: CreateCareCommunication //TODO change name
InstanceOf: TestScript
* insert Metadata
* id = "CareCommunication-create" //TODO change name
* name = "CareCommunication create" //TODO change name
* title = "CareCommunication create" //TODO change name
* description = "Testing if a CareCommunication Bundle is correct created" //TODO change name

//*2nd documentation phase*/
* insert  CheckSenderOrganizationExistsTest( 1, 	/FHIRSandbox/MedCom/CareCommunicationTMS/CareCommunicationFixture.xml) //TODO change name
//* insert  CheckCareCommunicationPatientExists( 2, /FHIRSandbox/MedCom/CareCommunicationTMS/CareCommunicationFixture.xml) //TODO change name
