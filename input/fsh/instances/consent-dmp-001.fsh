Instance: consent-dmp-001
InstanceOf: PreadmissionConsentFr
Usage: #example
* id = "consent-dmp-001"
* status = #active
* scope.coding[0].system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding[0].code = #patient-privacy
* patient.reference = "Patient/patient-001"
* dateTime = "2025-04-22T10:00:00+01:00"
* category.coding[0].system = "https://interop-sante.fr/CodeSystem/consent-category"
* category.coding[0].code = #dmp
* category.coding[0].display = "Dossier Médical Partagé"
* extension[0].url = "https://interop-sante.fr/fhir/StructureDefinition/consent-dmp-bris-de-glace"
* extension[0].valueCode = #DMP_ACCESS_GRANTED
* extension[1].url = "https://interop-sante.fr/fhir/StructureDefinition/consent-dmp-centre-regulation"
* extension[1].valueCode = #DMP_ACCESS_DENIED