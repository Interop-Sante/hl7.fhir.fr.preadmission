CodeSystem: PreadmissionStatusCodeSystem
Id: preadmission-status-code-system
Title: "CodeSystem des statuts de la préadmission"
Description: "CodeSystem pour les statuts de la préadmission"
* ^url = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-status"
* ^version = "1.0.0"
* ^status = #active
* ^content = #complete
* ^caseSensitive = false

* #CANCELLED "Pré-admission annulée"
* #CREATED "Pré-admission créée"
* #IN_PROGRESS "Pré-admission en cours"
* #READY "Pré-admission prête"
* #COMPLETED "Pré-admission terminée"
* #REFUSED "Pré-admission refusée"