Extension: PreadmissionTypeDocumentFr
Id: hl7.fhir.fr.preadmission.type-document
* ^url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/DocumentTypeFr"
* ^description = "Extension pour indiquer le type de document dans DocumentReference"
* ^context.type = #element
* ^context.expression = "DocumentReference"
* value[x] only Coding
* valueCoding from PreadmissionValueSetDocumentTypeFr (required)