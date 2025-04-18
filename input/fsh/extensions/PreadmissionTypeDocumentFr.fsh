Extension: PreadmissionTypeDocumentFr
Id: hl7.fhir.fr.preadmission.type-document
Description: "Extension pour indiquer le type de document dans DocumentReference"
* ^url = "https://interop-sante.fr/fhir/StructureDefinition/DocumentTypeFr"
* ^context.type = #element
* ^context.expression = "DocumentReference"
* value[x] only Coding
* valueCoding from PreadmissionValueSetDocumentTypeFr (required)