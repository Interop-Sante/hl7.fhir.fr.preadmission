# Encounter Preadmission Status SearchParameter - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## SearchParameter: Encounter Preadmission Status SearchParameter 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "encounter-preadmission-status",
  "url" : "https://hl7.fr/ig/fhir/preadmission/SearchParameter/encounter-preadmission-status",
  "version" : "1.0.0-ballot",
  "name" : "EncounterPreadmissionStatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-21T07:41:34+00:00",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Recherche des encounters par statut de pré-admission (extension PreadmissionStatutFr).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "code" : "preadmission-status",
  "base" : ["Encounter"],
  "type" : "token",
  "expression" : "Encounter.extension.where(url='https://hl7.fr/ig/fhir/preadmission/StructureDefinition/statut-preadmission-fr').value as CodeableConcept",
  "xpathUsage" : "normal"
}

```
