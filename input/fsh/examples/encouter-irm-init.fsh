Instance: encounter-irm-externe
InstanceOf: PreadmissionEncounterFr
Usage: #example
* id = "encounter-irm-externe"
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
* extension[0].valueCode = #READY

// Extension pour un commentaire éventuel
* extension[1].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/encounter-agent-instructions"
* extension[1].valueString = "Le patient est attendu pour une IRM en ambulatoire."