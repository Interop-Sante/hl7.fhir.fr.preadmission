Instance: encounter-irm-refused
InstanceOf: PreadmissionEncounterFr
Usage: #example
* id = "encounter-irm-refused"
* status = #planned
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = "AMB"
* type.coding[0].display = "Ambulatory"
* subject.reference = "Patient/patient-001"
* appointment.reference = "Appointment/appt-irm-001"
* period.start = "2025-05-15T10:30:00+01:00"
* period.end = "2025-05-15T11:00:00+01:00"

// Extension pour le statut de la préadmission
* extension[0].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-status"
* extension[0].valueCode = #REFUSED

// Extension pour le commentaire de rejet
* extension[1].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/encounter-agent-instructions"
* extension[1].valueString = "Le patient n'a pas fourni les documents nécessaires pour valider la préadmission."