Instance: coverage-amc
InstanceOf: PreadmissionCoverageFr
Title: "Couverture sociale AMC"
Description: "Couverture sociale AMC - préadmission."
Usage: #example
* id = "coverage-amc"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Couverture sociale AMC - préadmission.</p></div>"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-type"
* type.coding[0].code = #EHCPOL
* type.coding[0].display = "Assurance Maladie Complémentaire"
* beneficiary = Reference(patient-001) "Jean Dupont"
* subscriber = Reference(patient-001) "Jean Dupont"
* subscriberId = "AMC-987654321" // Numéro d'adhérent de l'AMC
* period.start = "2025-01-01T00:00:00+01:00"
* period.end = "2025-12-31T23:59:59+01:00"

// Extension pour les informations spécifiques à l'AMC
* extension[informationsAmc].extension[nomAMC].url = "nomAMC"
* extension[informationsAmc].extension[nomAMC].valueString = "Mutuelle Santé Plus"
* extension[informationsAmc].extension[numeroAMC].url = "numeroAMC"
* extension[informationsAmc].extension[numeroAMC].valueString = "987654321"
* extension[informationsAmc].extension[codeConvention].url = "codeConvention"
* extension[informationsAmc].extension[codeConvention].valueString = "12345"
* extension[informationsAmc].extension[codeCSR].url = "codeCSR"
* extension[informationsAmc].extension[codeCSR].valueString = "67890"

// Ajout d'un identifier
* identifier[0].system = "http://example.com/identifiers/coverage"
* identifier[0].value = "AMC-2025-001"
* identifier[0].use = #official

* payor.display = "Assurance Maladie Complémentaire"