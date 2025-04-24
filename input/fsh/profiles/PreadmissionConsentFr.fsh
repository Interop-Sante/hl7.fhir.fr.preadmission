Profile: PreadmissionConsentFr
Parent: Consent
Id: preadmission-consent-fr
Title: "Fr Preadmission Consent Profile"
Description: "Profil FHIR pour les consentements lors de la préadmission"

* patient 1..1
* patient only Reference(FrCorePatient)

* category 1..1
* category from PreadmissionConsentCategoryValueSet (required)

* dateTime 1..1

* provision.code ^slicing.discriminator.type = #value
* provision.code ^slicing.discriminator.path = "coding.code"
* provision.code ^slicing.rules = #open

* provision.code contains
    alimentationDmp 0..1 and
    consultationDmp 0..1

* provision.code[alimentationDmp] from DmpAlimentationConsentStatusVS (required)
* provision.code[consultationDmp] from DmpConsultationConsentStatusVS (required)
