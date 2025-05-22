Instance: qr-irm-001
InstanceOf: QuestionnaireResponse
Title: "Questionnaire préadmission IRM"
Description: "Questionnaire posé lors de la prise de rendez-vous pour une IRM."
Usage: #example
* id = "qr-irm-001"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Questionnaire posé lors de la prise de rendez-vous pour une IRM.</p></div>"
* status = #completed
* subject = Reference(patient-001) "Jean Dupont"
* questionnaire = "http://hl7.fr/fhir/fr/preadmission/Questionnaire/questionnaire-irm"
* authored = "2025-04-22T11:00:00+01:00"
* item[0].linkId = "implant"
* item[0].answer[0].valueBoolean = true
* item[1].linkId = "grossesse"
* item[1].answer[0].valueBoolean = false
* item[2].linkId = "allergies"
* item[2].answer[0].valueBoolean = true
* item[3].linkId = "medications"
* item[3].answer[0].valueBoolean = true