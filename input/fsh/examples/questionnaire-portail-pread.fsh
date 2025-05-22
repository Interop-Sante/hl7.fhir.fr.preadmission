Instance: questionnaire-chb-part
InstanceOf: Questionnaire
Title: "Questionnaire préadmission IRM"
Description: "Questionnaire posé par le portail de pré-admission."
Usage: #example
* id = "questionnaire-chb-part"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Réponse du patient au questionnaire posé par le portail de pré-admission.</p></div>"
* title = "Questionnaire IRM - Préadmission"
* status = #active
* subjectType = #Patient
* item[0].linkId = "private-room"
* item[0].text = "Souhaitez-vous une chambre particulière ?"
* item[0].type = #boolean
