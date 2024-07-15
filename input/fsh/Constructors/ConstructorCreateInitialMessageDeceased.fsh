RuleSet: createInitialMessageDeceased(type and number and fixture and activityCode and encounterClass and encounterStatus and reportOfAdmission and deceased)

/* 
Dette er en constructor. Som opretter en meddelelse. Her vil vi blot test om patienten er korrekt angivet som 'deceased' 
*/
* insert createInitialMessage({type} and {number} and {fixture} and {activityCode} and {encounterClass} and {encounterStatus} and {reportOfAdmission})
/* 
Beskriver den vurdering der sker af operationen. 
*/
* insert assertPatientDeceased({deceased})

