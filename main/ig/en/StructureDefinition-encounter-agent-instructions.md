# Consignes de l'agent administratif - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Extension: Consignes de l'agent administratif 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)
* Examples for this Extension: [Encounter/encounter-irm-refused](Encounter-encounter-irm-refused.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-encounter-agent-instructions.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-encounter-agent-instructions.csv), [Excel](../StructureDefinition-encounter-agent-instructions.xlsx), [Schematron](../StructureDefinition-encounter-agent-instructions.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "encounter-agent-instructions",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/encounter-agent-instructions",
  "version" : "1.0.0-ballot",
  "name" : "EncounterAgentInstructions",
  "title" : "Consignes de l'agent administratif",
  "status" : "active",
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
  "description" : "Consignes à destination du patient, fournies par l'agent administratif",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Consignes de l'agent administratif",
      "definition" : "Consignes à destination du patient, fournies par l'agent administratif"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/encounter-agent-instructions"
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
