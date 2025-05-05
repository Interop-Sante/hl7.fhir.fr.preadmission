Instance: consent-consultation-dmp
InstanceOf: PreadmissionConsentFr
Usage: #example
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* patient = Reference(patient-001) "Jean Dupont"
* dateTime = "2025-04-29T14:30:00+01:00"
* category.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-consent-type"
* category.coding[0].code = #consultationDmp
* category.coding[0].display = "Consultation du DMP"
* provision.code.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/valeurs-consent-cs"
* provision.code.coding[0].code = #IC
* provision.code.coding[0].display = "Informé et consent"