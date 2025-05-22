Instance: patient-001
InstanceOf: FRCorePatientProfile
Title: "Patient de préadmission"
Description: "Patient de préadmission - référencé dans les autres exemples."
Usage: #example
* id = "patient-001"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Patient de préadmission - référencé dans les autres exemples.</p></div>"

// Identifiant du patient (NIR)
* identifier[0].system = "http://interopsante.org/fhir/NIR"
* identifier[0].value = "123456789012345"

// Nom officiel du patient
* name[officialName].family = "Dupont"
* name[officialName].given[0] = "Jean"


// Sexe et date de naissance
* gender = #male
* birthDate = "1980-01-01"
