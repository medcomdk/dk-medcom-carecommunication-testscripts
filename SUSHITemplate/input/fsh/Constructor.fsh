//opstart testscript med meta information og beskrivelse

Instance: CreateCareCommunication //TODO change name
InstanceOf: TestScript
* insert Metadata
<<<<<<< Updated upstream
* id = "CC-CREATE" //TODO change name
* name = "CareCommunication" //TODO change name
* title = "CareCommunication create new" //TODO change name
* description = "Testing bundle contains one Patient" //TODO change name

//*2nd documentation phase*/
* insert  CreateCAreCommunicationTest( 1, /FHIRSandbox/MedCom/CareCommunicationANders/carecommunication.xml) //TODO change name
=======
* id = "CareCommunication-create" //TODO change name
* name = "CareCommunication create" //TODO change name
* title = "CareCommunication create" //TODO change name
* description = "Testing if a CareCommunication Bundle is correct created" //TODO change name

//*2nd documentation phase*/
* insert  CheckSenderOrganizationExistsTest( 1, 	/FHIRSandbox/MedCom/CareCommunicationTMS/CareCommunicationFixture.xml) //TODO change name
//* insert  CheckCareCommunicationPatientExists( 2, /FHIRSandbox/MedCom/CareCommunicationTMS/CareCommunicationFixture.xml) //TODO change name
>>>>>>> Stashed changes
