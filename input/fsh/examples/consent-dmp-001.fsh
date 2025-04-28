Instance: consent-dmp
InstanceOf: PreadmissionConsentFr
Usage: #example
* id = "consent-dmp"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Consentements liés au DMP - préadmission.</p></div>"
* status = #active
* scope.coding[0].system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding[0].code = #patient-privacy
* patient.reference = "Patient/patient-001"
* dateTime = "2025-04-22T10:00:00+01:00"
* category.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-consent-category"
* category.coding[0].code = #dmp
* category.coding[0].display = "Dossier Médical Partagé"

// Consentement pour l'alimentation du DMP
* provision.code[alimentationDmp].coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/dmp-alimentation-consent-status"
* provision.code[alimentationDmp].coding[0].code = #INO
* provision.code[alimentationDmp].coding[0].display = "Informé et non opposé"

// Consentement pour la consultation du DMP
* provision.code[consultationDmp].coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/dmp-consultation-consent-status"
* provision.code[consultationDmp].coding[0].code = #IC
* provision.code[consultationDmp].coding[0].display = "Informé et consent à la consultation de Mon Espace Santé"