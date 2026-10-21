# Consignes de l'agent administratif - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Extension: Consignes de l'agent administratif 

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)
* Exemples pour ce/t/te Extension: [Encounter/encounter-irm-refused](Encounter-encounter-irm-refused.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.preadmission|current/StructureDefinition/encounter-agent-instructions)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue différentielle** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Autres représentations du profil : [CSV](../StructureDefinition-encounter-agent-instructions.csv), [Excel](../StructureDefinition-encounter-agent-instructions.xlsx), [Schematron](../StructureDefinition-encounter-agent-instructions.sch) 



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
