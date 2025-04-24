Extension: PreadmissionStatutFr
Id: hl7.fhir.fr.preadmission.statut-preadmission
* ^url = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmissionStatus"
* ^description = "Statut spécifique de la pré-admission."
* ^context.type = #element
* ^context.expression = "Encounter"
* valueCodeableConcept 1..1
  * coding 1..1
    * system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-status"
    * code 1..1