Instance: documentreference-cni-recto
InstanceOf: PreadmissionDocumentReferenceFr
Title: "Document de préadmission - CNI recto"
Description: "Scan du recto de la carte d'identité du patient - préadmission."
Usage: #example
* id = "documentreference-cni-recto"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Scan du recto de la carte d'identité du patient - préadmission.</p></div>"
* status = #current
* type.coding[0].system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/document-type-code-system"
* type.coding[0].code = #CN_RECTO
* type.coding[0].display = "Recto Carte d’identité"
* subject = Reference(patient-001) "Jean Dupont"
* context.encounter = Reference(encounter-irm-refused) "Consultation IRM refusée"
* date = "2025-05-01T10:00:00+01:00"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://example.com/documents/cni-recto.pdf"
* content[0].attachment.title = "Carte d'identité - Recto"
* content[0].attachment.creation = "2025-04-30T15:00:00+01:00"