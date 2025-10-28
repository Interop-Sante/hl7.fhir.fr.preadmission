Instance: patient-parent
InstanceOf: FRCorePatientProfile
Title: "Patient de préadmission"
Description: "Patient de préadmission - référencé dans les autres exemples."
Usage: #example
* id = "patient-parent"

// Identifiant du patient (NIR)
* identifier[0].system = "http://interopsante.org/fhir/NIR"
* identifier[0].value = "123456789012345"

// Nom officiel du patient
* name[officialName].family = "Dupont"
* name[officialName].given[0] = "Michel"


// Sexe et date de naissance
* gender = #male
* birthDate = "1960-01-01"
