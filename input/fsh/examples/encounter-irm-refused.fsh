Instance: encounter-irm-refused
InstanceOf: PreadmissionEncounterFr
Title: "Consultation IRM refusée"
Description: "Consultation IRM refusée par l'agent du bureau des entrées - préadmission."
Usage: #example
* id = "encounter-irm-refused"
* status = #planned
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* class.display = "ambulatory"
* subject = Reference(patient-001) "Jean Dupont"
* appointment = Reference(appt-irm-001) "Rendez-vous préadmission IRM"
* period.start = "2025-05-15T10:30:00+01:00"
* period.end = "2025-05-15T11:00:00+01:00"

// Identifier tel que décrit dans le profil
* identifier[0].use = #temp
* identifier[0].type.coding[0].system = "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type"
* identifier[0].type.coding[0].code = #VN
* identifier[0].type.coding[0].display = "Visit Number"
* identifier[0].system = "http://example.com/identifiers/encounters"
* identifier[0].value = "15655244"

// Extension pour le statut de la préadmission
* extension[preadmissionStatus].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/statut-preadmission-fr"
* extension[preadmissionStatus].valueCodeableConcept.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-status-code-system"
* extension[preadmissionStatus].valueCodeableConcept.coding[0].code = #REFUSED

// Extension pour le commentaire de rejet
* extension[consignesAgent].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/encounter-agent-instructions"
* extension[consignesAgent].valueString = "Le patient n'a pas fourni les documents nécessaires pour valider la préadmission."