ValueSet: PreadmissionConsentPurposeReasonVS
Id: preadmission-consent-purpose-reason-vs
Title: "preadmission-consent-purpose-reason-vs"
Description: "Raisons justifiant l’utilisation des données personnelles (HL7 v3 ActReason)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true

* http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT "Treatment"
* http://terminology.hl7.org/CodeSystem/v3-ActReason#PATREQ "Patient Request"
* http://terminology.hl7.org/CodeSystem/v3-ActReason#HMO "Healthcare Operations"