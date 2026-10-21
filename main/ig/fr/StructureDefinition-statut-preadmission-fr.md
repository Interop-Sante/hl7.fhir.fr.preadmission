# Extension Statut Pré-admission - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Extension: Extension Statut Pré-admission 

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)
* Exemples pour ce/t/te Extension: [Encounter/encounter-irm-complete](Encounter-encounter-irm-complete.md), [Encounter/encounter-irm-externe](Encounter-encounter-irm-externe.md) and [Encounter/encounter-irm-refused](Encounter-encounter-irm-refused.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.preadmission|current/StructureDefinition/statut-preadmission-fr)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue différentielle** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensemble** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Autres représentations du profil : [CSV](../StructureDefinition-statut-preadmission-fr.csv), [Excel](../StructureDefinition-statut-preadmission-fr.xlsx), [Schematron](../StructureDefinition-statut-preadmission-fr.sch) 



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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
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
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-statuts-vs|1.0.0-ballot"
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
