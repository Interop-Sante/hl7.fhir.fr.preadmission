Profile: PreadmissionQuestionnaireResponseFr
Parent: QuestionnaireResponse
Id: preadmission-questionnaireresponse-fr
Title: "Fr Preadmission QuestionnaireResponse Profile"
Description: "Profil QuestionnaireResponse pour les réponses aux questionnaires de préadmission"

* status 1..1 MS
* subject 1..1 MS
* subject only Reference(PreadmissionAppointmentFr or PreadmissionEncounterFr or FRCorePatientProfile)
* subject ^short = "Référence vers le rendez-vous (Appointment), l'encounter (Encounter) ou le patient (Patient)"
* subject ^definition = "Référence vers le contexte de la réponse : Appointment pour les questionnaires de prise de RDV, Encounter pour les questionnaires de préadmission, ou Patient si pas de contexte spécifique"

* questionnaire 1..1 MS
* authored 1..1 MS
