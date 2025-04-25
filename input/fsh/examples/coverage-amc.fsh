Instance: coverage-amc
InstanceOf: PreadmissionCoverageFr
Usage: #example
* id = "coverage-amc"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/coverage-type"
* type.coding[0].code = #EHCPOL
* type.coding[0].display = "Assurance Maladie Complémentaire"
* beneficiary.reference = "Patient/patient-001"
* subscriber.reference = "Patient/patient-001"
* subscriberId = "AMC-987654321" // Numéro d'adhérent de l'AMC
* period.start = "2025-01-01T00:00:00+01:00"
* period.end = "2025-12-31T23:59:59+01:00"

// Extension pour les informations spécifiques à l'AMC
* extension[0].url = "http://fhir_interop.happytal.com/fhir/StructureDefinition/FrCoverageAMCExtended"
* extension[0].extension[0].url = "nomAMC"
* extension[0].extension[0].valueString = "Mutuelle Santé Plus"
* extension[0].extension[1].url = "numeroAMC"
* extension[0].extension[1].valueString = "987654321"
* extension[0].extension[2].url = "codeConvention"
* extension[0].extension[2].valueString = "12345"
* extension[0].extension[3].url = "codeCSR"
* extension[0].extension[3].valueString = "67890"

// Ajout d'un identifier
* identifier[0].system = "http://example.com/identifiers/coverage"
* identifier[0].value = "AMC-2025-001"
* identifier[0].use = #official

* payor.display = "Assurance Maladie Complémentaire"