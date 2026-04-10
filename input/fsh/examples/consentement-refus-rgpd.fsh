Instance: consentement-refus-rgpd
InstanceOf: PreadmissionConsentFr
Title: "Refus du consentement RGPD"
Description: "Exemple d'une ressource Consent en FHIR pour un refus explicite du traitement des données personnelles dans le cadre du RGPD."
Usage: #example
* status = #active
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy
* scope.coding.display = "Privacy Consent"
* category.coding.system = "http://loinc.org"
* category.coding.code = #57016-8
* category.coding.display = "Privacy Policy Acknowledgment Document"
* patient = Reference(Patient/patient-001) "Jean Dupont"
* dateTime = "2025-05-14T08:30:00+00:00"

* policy[0].authority = "https://www.cnil.fr/"
* policy[0].uri = "https://eur-lex.europa.eu/eli/reg/2016/679/oj"

* provision.type = #deny
* provision.code.coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.code.coding.code = #collect
* provision.code.coding.display = "Collect"
* provision.purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.purpose.code = #PATREQ
* provision.purpose.display = "patient request query"