Instance: encounter-irm-complete
InstanceOf: PreadmissionEncounterFr
Usage: #example
Title: "Encounter IRM complété par le patient"
Description: "Exemple d'une ressource Encounter complété par le patient sur le portail de préadmission pour une préadmission liée à un rendez-vous IRM externe, avec statut READY, consentements DMP, et réponse au questionnaire sur la chambre particulière."
* id = "encounter-irm-complete"
* status = #planned
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #SS
* class.display = "Externe"
* subject = Reference(Patient/patient-001) "Jean Dupont"
* appointment = Reference(Appointment/appt-irm-001) "Rendez-vous préadmission IRM"
* period.start = "2025-05-15T10:30:00+01:00"
* period.end = "2025-05-15T11:00:00+01:00"
* identifier.use = #temp
* identifier.type.coding.system = "http://interopsante.org/fhir/CodeSystem/fr-core-identifier-type"
* identifier.type.coding.code = #VN
* identifier.type.coding.display = "Visit Number"
* identifier.system = "http://example.com/identifiers/encounters"
* identifier.value = "15655244"
* extension[preadmissionStatus].valueCodeableConcept.coding.system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-status-code-system"
* extension[preadmissionStatus].valueCodeableConcept.coding.code = #READY
* extension[preadmissionStatus].valueCodeableConcept.coding.display = "Ready"
* extension[consentements][0].valueReference = Reference(Consent/consentement-dmp-consultation) "Consentement consultation DMP"
* extension[consentements][1].valueReference = Reference(Consent/consentement-dmp-alimentation) "Consentement alimentation DMP"
* extension[questionnaire].valueReference = Reference(QuestionnaireResponse/qr-chb-part) "Réponse questionnaire chambre particulière"