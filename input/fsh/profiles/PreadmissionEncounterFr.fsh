Profile: PreadmissionEncounterFr
Parent: Encounter
Id: preadmission-encounter-fr
Title: "Fr Preadmission Encounter Profile"
Description: "Profil FHIR pour un encounter lié à une préadmission"

* extension contains EncounterPatientComment named remarquePatient 0..1
* extension contains EncounterAgentInstructions named consignesAgent 0..1
* extension contains PreadmissionStatutFr named preadmissionStatus 1..1
* identifier.use = #temp
* identifier.type.coding.system = "http://interopsante.org/fhir/CodeSystem/fr-core-identifier-type"
* identifier.type.coding.code = #VN
* ^text.status = #generated
* ^text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>L'identifiant de la préadmission doit être représenté dans l'élément <code>identifier</code> avec :</p>
  <ul>
    <li>un <strong>use</strong> de type <code>temp</code></li>
    <li>un <strong>type</strong> codé avec la valeur <code>VN</code> ("Visit Number") selon le système <code>http://interopsante.org/fhir/CodeSystem/fr-core-identifier-type</code></li>
  </ul>
</div>
"""
* extension contains EncounterConsentExtension named consentements 0..*