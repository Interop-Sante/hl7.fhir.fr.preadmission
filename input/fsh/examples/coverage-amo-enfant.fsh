Instance: coverage-amo-enfant
InstanceOf: PreadmissionCoverageFr
Title: "Couverture sociale AMO"
Description: "Couverture sociale AMO - préadmission."
Usage: #example
* id = "coverage-amo-enfant"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #PUBLICPOL
* beneficiary = Reference(patient-001) "Jean Dupont"
* subscriber = Reference(patient-parent) "Michel Dupont"
* subscriberId = "123456789012345" // Numéro de sécurité sociale (NIR)
* relationship.coding[0].system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"
* relationship.coding[0].code = #child
* period.start = "2025-01-01T00:00:00+01:00"
* period.end = "2025-12-31T23:59:59+01:00"

// Ajout d'un identifier
* identifier[0].system = "http://example.com/identifiers/coverage"
* identifier[0].value = "AMO-2025-001"
* identifier[0].use = #official

* payor.display = "Assurance Maladie Obligatoire"
