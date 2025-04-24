Instance: questionnaire-irm
InstanceOf: Questionnaire
Usage: #example
* id = "questionnaire-irm"
* title = "Questionnaire IRM - Préadmission"
* status = #active
* subjectType = #Patient
* item[0].linkId = "implant"
* item[0].text = "Avez-vous un implant métallique ou un pacemaker ?"
* item[0].type = #boolean
* item[1].linkId = "grossesse"
* item[1].text = "Êtes-vous actuellement enceinte ?"
* item[1].type = #boolean
* item[2].linkId = "allergies"
* item[2].text = "Avez-vous des allergies connues ?"
* item[2].type = #boolean
* item[3].linkId = "medications"
* item[3].text = "Prenez-vous des médicaments régulièrement ?"
* item[3].type = #boolean