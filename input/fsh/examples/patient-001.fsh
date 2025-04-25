Instance: patient-001
InstanceOf: FRCorePatientProfile
Usage: #example
* id = "patient-001"

// Identifiant du patient (NIR)
* identifier[0].system = "http://interopsante.org/fhir/NIR"
* identifier[0].value = "123456789012345"

// Nom officiel du patient
* name[officialName].family = "Dupont"
* name[officialName].given[0] = "Jean"
* name[officialName].extension[0].url = "http://hl7.org/fhir/StructureDefinition/birth-list-given-name"
* name[officialName].extension[0].valueString = "Jean"

// Sexe et date de naissance
* gender = #male
* birthDate = "1980-01-01"
