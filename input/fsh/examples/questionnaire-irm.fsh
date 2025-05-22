Instance: questionnaire-irm
InstanceOf: Questionnaire
Title: "Reponse Questionnaire préadmission IRM"
Description: "Réponses au questionnaire posé lors de la prise de rendez-vous pour une IRM."
Usage: #example
* id = "questionnaire-irm"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Réponse du patient au questionnaire posé lors de la prise de rendez-vous pour une IRM.</p></div>"
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