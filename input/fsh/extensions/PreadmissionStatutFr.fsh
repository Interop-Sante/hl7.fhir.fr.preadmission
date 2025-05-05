Extension: PreadmissionStatutFr
Id: statut-preadmission-fr
Title:     "Extension Statut Pré-admission"
Description: "Extension transportant les statuts spécifiques de la pré-admission."

* ^description = "Extension transportant les statuts spécifiques de la pré-admission."
* ^context.type = #element
* ^context.expression = "Encounter"

* valueCodeableConcept 1..1
  * coding 1..1
    * code 1..1

* valueCodeableConcept ^binding.strength = #required
* valueCodeableConcept ^binding.valueSet = PreAdmissionStatusValueSet