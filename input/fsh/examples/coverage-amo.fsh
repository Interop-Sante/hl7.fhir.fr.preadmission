Instance: coverage-amo
InstanceOf: PreadmissionCoverageFr
Title: "Couverture sociale AMO"
Description: "Couverture sociale AMO - préadmission."
Usage: #example
* id = "coverage-amo"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Couverture sociale AMO - préadmission.</p></div>"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-type"
* type.coding[0].code = #PUBLICPOL
* type.coding[0].display = "Assurance Maladie Obligatoire"
* beneficiary = Reference(patient-001) "Jean Dupont"
* subscriber = Reference(patient-001) "Jean Dupont"
* subscriberId = "123456789012345" // Numéro de sécurité sociale (NIR)
* period.start = "2025-01-01T00:00:00+01:00"
* period.end = "2025-12-31T23:59:59+01:00"

// Ajout d'un identifier
* identifier[0].system = "http://example.com/identifiers/coverage"
* identifier[0].value = "AMO-2025-001"
* identifier[0].use = #official

* payor.display = "Assurance Maladie Obligatoire"
