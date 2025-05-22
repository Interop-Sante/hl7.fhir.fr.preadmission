Profile: PreadmissionEncounterFr
Parent: FRCoreEncounterProfile
Id: preadmission-encounter-fr
Title: "Fr Preadmission Encounter Profile"
Description: "Profil Encounter pour une préadmission"

* extension contains 
    EncounterPatientComment named remarquePatient 0..1 and
    EncounterAgentInstructions named consignesAgent 0..1 and
    PreadmissionStatutFr named preadmissionStatus 1..1 and
    PreadmissionConsentementsExtension named consentements 0..* and
    PreadmissionAppointmentQuestionnaireResponseFr named questionnaire 0..*

* extension[remarquePatient] ^short = "Remarque patient"
* extension[consignesAgent] ^short = "Consignes agent"  
* extension[preadmissionStatus] ^short = "Statut de préadmission"
* extension[consentements] ^short = "Consentements"
* extension[questionnaire] ^short = "Questionnaire libre lié à la préadmission"

* identifier.use = #temp
* identifier.type.coding.system from FRCoreValueSetEncounterIdentifierType
* identifier.type.coding.code = #VN

* subject only Reference(FRCorePatientProfile)
* appointment 0..1
* appointment only Reference(PreadmissionAppointmentFr)
* status 1..1 MS
* participant 0..* MS
* period 1..1 MS
* location 0..1 MS

// Précision pour le champ class
* class 1..1 MS
* class.code from TypeVenueEncounterValueSet (required)
