Instance: questionnaire-chb-part
InstanceOf: Questionnaire
Title: "Questionnaire préadmission IRM"
Description: "Questionnaire posé par le portail de pré-admission."
Usage: #example
* id = "questionnaire-chb-part"
* title = "Questionnaire IRM - Préadmission"
* status = #active
* subjectType = #appointment
* item[0].linkId = "private-room"
* item[0].text = "Souhaitez-vous une chambre particulière ?"
* item[0].type = #boolean
