Instance: coverage-amo
InstanceOf: PreadmissionCoverageFr
Usage: #example
* id = "coverage-amo"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-type"
* type.coding[0].code = #PUBLICPOL
* type.coding[0].display = "Assurance Maladie Obligatoire"
* beneficiary.reference = "Patient/patient-001"
* subscriber.reference = "Patient/patient-001"
* subscriberId = "123456789012345" // Numéro de sécurité sociale (NIR)
* period.start = "2025-01-01T00:00:00+01:00"
* period.end = "2025-12-31T23:59:59+01:00"

// Ajout d'un identifier
* identifier[0].system = "http://example.com/identifiers/coverage"
* identifier[0].value = "AMO-2025-001"
* identifier[0].use = #official

* payor.display = "Assurance Maladie Obligatoire"
