# Remarque du patient - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Extension: Remarque du patient 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-encounter-patient-comment.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-encounter-patient-comment.csv), [Excel](../StructureDefinition-encounter-patient-comment.xlsx), [Schematron](../StructureDefinition-encounter-patient-comment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encounter-patient-comment",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/encounter-patient-comment",
  "version" : "1.0.0-ballot",
  "name" : "EncounterPatientComment",
  "title" : "Remarque du patient",
  "status" : "active",
  "date" : "2026-10-21T10:02:58+00:00",
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
  "description" : "Remarque libre saisie par le patient à destination de l’agent administratif",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Remarque du patient",
      "definition" : "Remarque libre saisie par le patient à destination de l’agent administratif"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/encounter-patient-comment"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
