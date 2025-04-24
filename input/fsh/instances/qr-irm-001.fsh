Instance: qr-irm-001
InstanceOf: QuestionnaireResponse
Usage: #example
* id = "qr-irm-001"
* status = #completed
* subject.reference = "Patient/patient-001"
* questionnaire = "Questionnaire/questionnaire-irm"
* authored = "2025-04-22T11:00:00+01:00"
* item[0].linkId = "implant"
* item[0].answer[0].valueBoolean = true
* item[1].linkId = "grossesse"
* item[1].answer[0].valueBoolean = false
* item[2].linkId = "allergies"
* item[2].answer[0].valueBoolean = true
* item[3].linkId = "medications"
* item[3].answer[0].valueBoolean = true