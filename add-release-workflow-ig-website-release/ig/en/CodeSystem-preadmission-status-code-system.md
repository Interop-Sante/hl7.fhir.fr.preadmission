# preadmission-status-code-system - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## CodeSystem: preadmission-status-code-system (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [preadmission-status-vs](ValueSet-preadmission-statuts-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "preadmission-status-code-system",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/preadmission-status-code-system",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionStatusCodeSystem",
  "title" : "preadmission-status-code-system",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-21T07:37:29+00:00",
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
  "description" : "Statut de pré-admission",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "CANCELLED",
    "display" : "Pré-admission annulée"
  },
  {
    "code" : "CREATED",
    "display" : "Pré-admission créée"
  },
  {
    "code" : "IN_PROGRESS",
    "display" : "Pré-admission en cours"
  },
  {
    "code" : "READY",
    "display" : "Pré-admission prête"
  },
  {
    "code" : "COMPLETED",
    "display" : "Pré-admission terminée"
  },
  {
    "code" : "REFUSED",
    "display" : "Pré-admission refusée"
  }]
}

```
