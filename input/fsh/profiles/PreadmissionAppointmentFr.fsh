Profile: PreadmissionAppointmentFr
Parent: FRCoreAppointmentProfile
Id: preadmission-appointment-fr
Title: "Fr Preadmission Appointment Profile"
Description: "Profil Appointment pour un rendez-vous de préadmission"

* extension contains
    PreadmissionAppointmentQuestionnaireResponseFr named questionnaire 0..*

* extension[questionnaire] ^short = "Questionnaire lié au rendez-vous"

* participant.actor only Reference(FRCorePatientProfile or FRCorePractitionerProfile)


