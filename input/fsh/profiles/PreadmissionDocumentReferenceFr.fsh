Profile: PreadmissionDocumentReferenceFr
Parent: DocumentReference
Id: preadmission-documentreference-fr
Title: "Fr Preadmission DocumentReference Profile"
Description: "Profil DocumentReference pour un document administratif de préadmission"

* context 1..1
* context.encounter 1..1
* content 1..*
* content.attachment 1..1
* content.attachment.contentType 1..1

// Contraindre le type de document à utiliser le ValueSet dédié
* type 1..1
* type from PreadmissionDocumentTypeFrValueSet (required)
