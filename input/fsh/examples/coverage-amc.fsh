Instance: coverage-amc
InstanceOf: PreadmissionCoverageFr
Title: "Couverture sociale AMC"
Description: "Couverture sociale AMC - préadmission."
Usage: #example
* id = "coverage-amc"
* status = #active
* type.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding[0].code = #EHCPOL
* beneficiary = Reference(patient-001) "Jean Dupont"
* subscriber = Reference(patient-001) "Jean Dupont"
* subscriberId = "AMC-987654321" // Numéro d'adhérent de l'AMC
* period.start = "2025-01-01T00:00:00+01:00"
* period.end = "2025-12-31T23:59:59+01:00"

// Extension pour les informations spécifiques à l'AMC
* extension[informationsAmc].extension[codeCSR].valueCode = #CSR67890
* extension[informationsAmc].extension[datamatrix].valueString = "(exemple)DATAMATRIX-AMC-987654321"
* extension[informationsAmc].extension[conventionParDomaine][+].extension[codeConvention].valueCode = #CONV12345
* extension[informationsAmc].extension[conventionParDomaine][=].extension[domaine][+].valueCode = #consultation
* extension[informationsAmc].extension[conventionParDomaine][=].extension[domaine][+].valueCode = #hospitalisation

// Ajout d'un identifier
* identifier[0].system = "http://example.com/identifiers/coverage"
* identifier[0].value = "AMC-2025-001"
* identifier[0].use = #official

* payor.display = "Nom Assurance Maladie Complémentaire"
* payor.identifier[0].system = "urn:oid:1.2.250.1.213.1.1.4.6"
* payor.identifier[0].value = "987654321"