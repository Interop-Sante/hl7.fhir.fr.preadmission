Instance: encounter-irm-externe
InstanceOf: PreadmissionEncounterFr
Title: "Consultation IRM externe"
Description: "Initialisation de la préadmission par la GAP, suite à la réception dun rendez-vous - préadmission."
Usage: #example
* id = "encounter-irm-externe"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Initialisation de la préadmission par la GAP, suite à la réception dun rendez-vous - préadmission.</p></div>"
* status = #planned
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #SS
* class.display = "Externe"
* subject = Reference(patient-001) "Jean Dupont"
* appointment = Reference(appt-irm-001) "Rendez-vous préadmission IRM"
* period.start = "2025-05-15T10:30:00+01:00"
* period.end = "2025-05-15T11:00:00+01:00"

// Identifier tel que décrit dans le profil
* identifier[0].use = #temp
* identifier[0].type.coding[0].system = "http://interopsante.org/fhir/CodeSystem/fr-core-identifier-type"
* identifier[0].type.coding[0].code = #VN
* identifier[0].type.coding[0].display = "Visit Number"
* identifier[0].system = "http://example.com/identifiers/encounters"
* identifier[0].value = "15655244"


* extension[preadmissionStatus].url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/statut-preadmission-fr"
* extension[preadmissionStatus].valueCodeableConcept.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-status-code-system"
* extension[preadmissionStatus].valueCodeableConcept.coding[0].code = #READY

