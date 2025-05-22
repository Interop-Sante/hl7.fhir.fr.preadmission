Instance: appt-irm-001
InstanceOf: PreadmissionAppointmentFr
Title: "Prise de rendez-vous IRM cérébrale"
Description: "Rendez-vous pour une IRM cérébrale - préadmission."
Usage: #example
* id = "appt-irm-001"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Rendez vous pour une IRM cérébrale - préadmission.</p></div>"
* status = #booked
* start = "2025-05-15T10:30:00+01:00"
* end = "2025-05-15T11:00:00+01:00"
* participant[0].actor = Reference(patient-001) "Jean Dupont"
* participant[0].status = #accepted
* participant[1].actor = Reference(practitioner-irm)
* participant[1].status = #accepted
* reasonCode[0].coding[0].system = "http://snomed.info/sct"
* reasonCode[0].coding[0].code = #241541005
* reasonCode[0].coding[0].display = "IRM cérébrale (procédure)"


// Extensions pour les questionnaires
* extension[questionnaire].valueReference = Reference(qr-irm-001) "Questionnaire préadmission IRM"

// Extensions pour les consentements
* extension[+].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-consent-fr-extension"
* extension[=].valueReference = Reference(Consent/consentement-multi)

* extension[+].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-consent-fr-extension"
* extension[=].valueReference = Reference(Consent/consentement-refus-rgpd)