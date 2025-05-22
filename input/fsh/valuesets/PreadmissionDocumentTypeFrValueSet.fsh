ValueSet: PreadmissionDocumentTypeFrValueSet
Id: preadmission-document-type-vs
Title: "preadmission-document-type-vs"
Description: "Liste des types de documents autorisés pour la préadmission"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true

* include codes from system FRCoreCodeSystemModeValidationIdentite
* include codes from system PreadmissionDocumentTypeCodeSystem
