Instance: encounter-irm-refused
InstanceOf: PreadmissionEncounterFr
Usage: #example
* id = "encounter-irm-refused"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Refus de la préadmission par l'agent du bureu des entrée suite à un manque de document - préadmission.</p></div>"
* status = #planned
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #SS
* class.display = "Externe"
* subject.reference = "Patient/patient-001"
* appointment.reference = "Appointment/appt-irm-001"
* period.start = "2025-05-15T10:30:00+01:00"
* period.end = "2025-05-15T11:00:00+01:00"

// Identifier tel que décrit dans le profil
* identifier[0].use = #temp
* identifier[0].type.coding[0].system = "http://interopsante.org/fhir/CodeSystem/fr-core-identifier-type"
* identifier[0].type.coding[0].code = #VN
* identifier[0].type.coding[0].display = "Visit Number"
* identifier[0].system = "http://example.com/identifiers/encounters"
* identifier[0].value = "15655244"

// Extension pour le statut de la préadmission
* extension[0].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-status"
* extension[0].valueCode = #REFUSED

// Extension pour le commentaire de rejet
* extension[1].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/encounter-agent-instructions"
* extension[1].valueString = "Le patient n'a pas fourni les documents nécessaires pour valider la préadmission."