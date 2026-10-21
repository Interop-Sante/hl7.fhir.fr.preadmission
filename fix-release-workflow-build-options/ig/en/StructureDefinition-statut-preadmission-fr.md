# Extension Statut Pré-admission - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Extension: Extension Statut Pré-admission 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)
* Examples for this Extension: [Encounter/encounter-irm-complete](Encounter-encounter-irm-complete.md), [Encounter/encounter-irm-externe](Encounter-encounter-irm-externe.md) and [Encounter/encounter-irm-refused](Encounter-encounter-irm-refused.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-statut-preadmission-fr.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-statut-preadmission-fr.csv), [Excel](../StructureDefinition-statut-preadmission-fr.xlsx), [Schematron](../StructureDefinition-statut-preadmission-fr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "statut-preadmission-fr",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/statut-preadmission-fr",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionStatutFr",
  "title" : "Extension Statut Pré-admission",
  "status" : "active",
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
  "description" : "Statut de pré-admission",
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
      "short" : "Extension Statut Pré-admission",
      "definition" : "Statut de pré-admission"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/statut-preadmission-fr"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-statuts-vs"
      }
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "min" : 1
    }]
  }
}

```
