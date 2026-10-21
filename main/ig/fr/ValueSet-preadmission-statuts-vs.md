# preadmission-status-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: preadmission-status-vs (Expérimental) 

 **References** 

* [Extension Statut Pré-admission](StructureDefinition-statut-preadmission-fr.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "preadmission-statuts-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-statuts-vs",
  "version" : "1.0.0-ballot",
  "name" : "PreAdmissionStatusValueSet",
  "title" : "preadmission-status-vs",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-21T12:34:52+00:00",
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
  "description" : "Statuts valides qu'une préadmission peut prendre.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/preadmission-status-code-system",
      "version" : "1.0.0-ballot"
    }]
  }
}

```
