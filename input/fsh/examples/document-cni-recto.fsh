Instance: documentreference-cni-recto
InstanceOf: PreadmissionDocumentReferenceFr
Usage: #example
* id = "documentreference-cni-recto"
* status = #current
* type.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/document-type-code-system"
* type.coding[0].code = #CNI
* type.coding[0].display = "Carte Nationale d'Identité - Recto"
* subject.reference = "Patient/patient-001"
* context.encounter.reference = "Encounter/encounter-irm-refused"
* date = "2025-05-01T10:00:00+01:00"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://example.com/documents/cni-recto.pdf"
* content[0].attachment.title = "Carte d'identité - Recto"
* content[0].attachment.creation = "2025-04-30T15:00:00+01:00"