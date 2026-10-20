Instance: encounter-preadmission-status
InstanceOf: SearchParameter
Title: "Encounter Preadmission Status SearchParameter"
Usage: #definition
Description: "Recherche des encounters par statut de pré-admission (extension PreadmissionStatutFr)."
* url = "https://hl7.fr/ig/fhir/preadmission/SearchParameter/encounter-preadmission-status"
* version = "1.0.0"
* name = "EncounterPreadmissionStatus"
* status = #active
* experimental = false
* description = "Recherche des encounters par statut de pré-admission (extension PreadmissionStatutFr)."
* code = #preadmission-status
* base = #Encounter
* type = #token
* expression = "Encounter.extension.where(url='https://hl7.fr/ig/fhir/preadmission/StructureDefinition/statut-preadmission-fr').value as CodeableConcept"
* xpathUsage = #normal
