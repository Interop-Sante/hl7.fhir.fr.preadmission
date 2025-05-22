Extension: PreadmissionStatutFr
Id: statut-preadmission-fr
Title:     "Extension Statut Pré-admission"
Description: "Statut de pré-admission"
* ^context.type = #element
* ^context.expression = "Encounter"

* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from PreAdmissionStatusValueSet (required)
* valueCodeableConcept.coding 1..*