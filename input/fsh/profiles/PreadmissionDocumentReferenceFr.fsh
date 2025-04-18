Profile: PreadmissionDocumentReferenceFr
Parent: DocumentReference
Id: preadmission-documentreference-fr
Title: "Fr Preadmission DocumentReference Profile"
Description: "Profil FHIR pour un document administratif de préadmission"

* extension contains PreadmissionTypeDocumentFr named typeDocument 1..1
* context.encounter 1..1
* content 1..*
* content.attachment 1..1
* content.attachment.contentType 1..1
