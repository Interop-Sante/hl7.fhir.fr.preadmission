Extension: PreadmissionStatutFr
Id: hl7.fhir.fr.preadmission.statut-preadmission
Description: "Statut spécifique de la pré-admission."
Context: Encounter
* valueCodeableConcept 1..1
  * coding 1..1
    * system = "http://hl7.fr/fhir/fr/preadmission/CodeSystem/preadmission-status"
    * code 1..1