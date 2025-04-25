Extension: PreadmissionStatutFr
Id: hl7.fhir.fr.preadmission.statut-preadmission
* ^description = "Statut spécifique de la pré-admission."
* ^context.type = #element
* ^context.expression = "Encounter"

* valueCodeableConcept 1..1
  * coding 1..1
    * code 1..1

* valueCodeableConcept ^binding.strength = #required
* valueCodeableConcept ^binding.valueSet = PreAdmissionStatusValueSet