Instance: consent-alimentation-dmp
InstanceOf: PreadmissionConsentFr
Usage: #example
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* patient = Reference(patient-001) "Jean Dupont"
* dateTime = "2025-04-29T14:30:00+01:00"
* category.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-consent-type"
* category.coding[0].code = #alimentationDmp
* category.coding[0].display = "Alimentation du DMP"
* provision.type = #deny
* provision.code.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/valeurs-consent-cs"
* provision.code.coding[0].code = #INC
* provision.code.coding[0].display = "Informé et ne consent pas"