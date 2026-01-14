Instance: consentement-dmp-alimentation
InstanceOf: PreadmissionConsentFr
Title: "Consentement alimentation DMP"
Description: "Consentement pour l’alimentation du DMP, non recueilli (provision.type vide)."
Usage: #example
* status = #active
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy
* scope.coding.display = "Privacy Consent"
* category.coding.system = "http://loinc.org"
* category.coding.code = #59284-0
* category.coding.display = "Consent Document"
* patient = Reference(Patient/patient-001) "Jean Dupont"
* dateTime = "2025-05-14T08:30:00+01:00"

* policy[0].authority = "https://esante.gouv.fr/"
* policy[0].uri = "https://esante.gouv.fr/doctrine/mon-espace-sante"

* provision.type = #permit
* provision.code.coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.code.coding.code = #collect
* provision.code.coding.display = "Collect"
* provision.purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.purpose.code = #TREAT
* provision.purpose.display = "Treatment"