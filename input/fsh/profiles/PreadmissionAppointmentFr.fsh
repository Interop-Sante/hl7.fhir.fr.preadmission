Profile: PreadmissionAppointmentFr
Parent: FrCoreAppointment
Id: preadmission-appointment-fr
Title: "Fr Preadmission Appointment Profile"
Description: "Profil FHIR pour un rendez-vous de préadmission"

* extension contains
    PreadmissionAppointmentQuestionnaireResponseFr named questionnaire 0..* and
    PreadmissionConsentementsExtension named consentements 0..*

* participant.actor only Reference(FrCorePatient)

