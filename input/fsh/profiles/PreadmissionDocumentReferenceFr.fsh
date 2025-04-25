Profile: PreadmissionDocumentReferenceFr
Parent: DocumentReference
Id: preadmission-documentreference-fr
Title: "Fr Preadmission DocumentReference Profile"
Description: "Profil FHIR pour un document administratif de préadmission"

* context.encounter 1..1
* content 1..*
* content.attachment 1..1
* content.attachment.contentType 1..1

// Contraindre le type de document à utiliser le ValueSet dédié
* type 1..1
* type.coding 1..1
* type.coding ^binding.strength = #required
* type.coding ^binding.valueSet = PreadmissionValueSetDocumentTypeFr