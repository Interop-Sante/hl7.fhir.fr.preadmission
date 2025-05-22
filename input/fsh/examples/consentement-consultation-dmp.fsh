Instance: consentement-dmp-consultation
InstanceOf: PreadmissionConsentFr
Title: "Consentement consultation DMP"
Description: "Consentement pour la consultation du DMP, non recueilli (provision.type vide)."
Usage: #example
* status = #active
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy
* scope.coding.display = "Patient Privacy"
* category.coding.system = "http://loinc.org"
* category.coding.code = #59284-0
* category.coding.display = "Consent Document"
* patient = Reference(Patient/patient-001) "Jean Dupont"
* dateTime = "2025-05-14T08:30:00+01:00"
* provision.code.coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.code.coding.code = #access
* provision.code.coding.display = "Access data"
* provision.purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.purpose.code = #TREAT
* provision.purpose.display = "Treatment"