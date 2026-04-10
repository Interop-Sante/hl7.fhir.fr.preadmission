CodeSystem: PreadmissionStatusCodeSystem
Id: preadmission-status-code-system
Title: "preadmission-status-code-system"
Description: "Statut de pré-admission"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^content = #complete
* ^caseSensitive = false
* ^experimental = true
* #CANCELLED "Pré-admission annulée"
* #CREATED "Pré-admission créée"
* #IN_PROGRESS "Pré-admission en cours"
* #READY "Pré-admission prête"
* #COMPLETED "Pré-admission terminée"
* #REFUSED "Pré-admission refusée"