Instance: consent-rgpd
InstanceOf: PreadmissionConsentFr
Usage: #example
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* patient = Reference(patient-001) "Jean Dupont"
* dateTime = "2025-04-29T14:30:00+01:00"
* category.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-consent-type"
* category.coding[0].code = #other

// Policy RGPD
* policy[0].authority = "https://www.cnil.fr"
* policy[0].uri = "https://www.cnil.fr/fr/reglement-europeen-protection-donnees"

* category.coding[0].display = "Autres (RGPD, etc.)"
* provision.code.coding[0].system = "http://snomed.info/sct"
* provision.code.coding[0].code = #225773000
* provision.code.coding[0].display = "Informed consent"