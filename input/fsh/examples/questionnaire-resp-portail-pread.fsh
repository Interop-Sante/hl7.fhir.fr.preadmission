Instance: reponse-chambre-particuliere
InstanceOf: QuestionnaireResponse
Title: "Réponse questionnaire chambre particulière"
Description: "Réponse du patient au questionnaire posé par le portail de pré-admission."
Usage: #example
* id = "qr-chb-part"
* status = #completed
* subject = Reference(patient-001) "Jean Dupont"
* questionnaire = "http://hl7.fr/fhir/fr/preadmission/Questionnaire/questionnaire-portail-pread"
* authored = "2025-04-22T11:00:00+01:00"

* item[0].linkId = "private-room"
* item[0].text = "Souhaitez-vous une chambre particulière ?"
* item[0].answer.valueBoolean = true