Instance: appt-irm-001
InstanceOf: PreadmissionAppointmentFr
Usage: #example
* id = "appt-irm-001"
* status = #booked
* description = "IRM cérébrale - préadmission"
* start = "2025-05-15T10:30:00+01:00"
* end = "2025-05-15T11:00:00+01:00"
* participant[0].actor.reference = "Patient/patient-001"
* participant[0].status = #accepted
* participant[1].actor.reference = "Practitioner/practitioner-irm"
* participant[1].status = #accepted
* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #241541005
* reasonCode[0].coding[0].display = "IRM cérébrale (procédure)"
* extension[0].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/appointment-context"
* extension[0].valueReference.reference = "QuestionnaireResponse/qr-irm-001"