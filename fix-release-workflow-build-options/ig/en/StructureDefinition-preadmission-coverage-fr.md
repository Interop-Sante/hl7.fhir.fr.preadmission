# Fr Preadmission Coverage Profile - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Resource Profile: Fr Preadmission Coverage Profile 

### Introduction

La couverture sociale est un élément clé du processus de préadmission hospitalière. Elle permet de garantir que les frais médicaux du patient seront pris en charge, soit par l’Assurance Maladie Obligatoire (AMO), soit par une Assurance Maladie Complémentaire (AMC). Dans le cadre de la préadmission, ces informations sont collectées et structurées à l’aide de la ressource FHIR `Coverage`, enrichie d’extensions spécifiques pour répondre aux besoins administratifs et réglementaires.

-------

### Pourquoi renseigner la couverture sociale ?

La couverture sociale joue un rôle central dans la gestion administrative d’un séjour hospitalier. Elle permet :

* **D’assurer la prise en charge financière** : Les informations sur l’AMO et l’AMC permettent à l’hôpital de facturer correctement les soins.
* **De vérifier les droits du patient** : Les données collectées garantissent que le patient est bien couvert pour les prestations médicales prévues.
* **De simplifier les échanges administratifs** : En structurant les informations selon les standards FHIR, les systèmes hospitaliers peuvent traiter efficacement les données.

-------

### Ressource FHIR : Coverage

La ressource `Coverage` est utilisée pour modéliser les informations relatives à la couverture sociale d’un patient. Elle inclut des champs essentiels tels que :

* **Le type de couverture** : AMO (Assurance Maladie Obligatoire) ou AMC (Assurance Maladie Complémentaire).
* **Le bénéficiaire** : Le patient couvert par cette assurance.
* **L’assuré principal** : La personne à laquelle la couverture est rattachée (si différente du bénéficiaire).
* **La période de validité** : Les dates de début et de fin de la couverture.
* **Le lien entre l’assuré et le bénéficiaire** : Par exemple, parent, conjoint ou enfant.

#### Extensions spécifiques

Pour répondre aux besoins spécifiques de la préadmission, des extensions enrichissent la ressource `Coverage` :

* **`FrCoverageAMCExtension`** : Permet de détailler les informations spécifiques à une AMC, comme le nom de l’organisme complémentaire, le numéro d’adhérent, ou encore un code de convention.

-------

### Comment renseigner une AMO ?

Pour une Assurance Maladie Obligatoire (AMO), les informations suivantes doivent être renseignées dans la ressource `Coverage` :

1. **Type de couverture**: Utilisez le code`PUBLICPOL`pour indiquer qu’il s’agit d’une AMO.
1. **Bénéficiaire**: Référencez le patient concerné via le champ`beneficiary`.
1. **Assuré principal**: Si l’assuré principal est différent du bénéficiaire, renseignez le champ`subscriber`avec une référence vers la ressource`Patient`correspondante.
1. **Numéro de sécurité sociale**: Renseignez le champ`subscriberId`avec le numéro de Sécurité Sociale de l’assuré principal.
1. **Lien entre l’assuré et le bénéficiaire**: Si nécessaire, utilisez le champ`relationship`pour indiquer le lien (ex. parent, conjoint).

-------

### Comment renseigner une AMC ?

Pour une Assurance Maladie Complémentaire (AMC), les informations suivantes doivent être renseignées :

1. **Type de couverture**: Utilisez le code`EHCPOL`pour indiquer qu’il s’agit d’une AMC.
1. **Bénéficiaire**: Référencez le patient concerné via le champ`beneficiary`.
1. **Assuré principal**: Si l’assuré principal est différent du bénéficiaire, renseignez le champ`subscriber`avec une référence vers la ressource`Patient`correspondante.
1. **Numéro d’adhérent**: Renseignez le champ`subscriberId`avec le numéro d’adhérent fourni par l’organisme complémentaire.
1. **Détails spécifiques à l’AMC**
* Le numéro de l’AMC doit être renseigné comme **identifier** du `payor` (`Organization`), l’oid associé est `1.2.250.1.213.1.1.4.6`.
* Utilisez l’extension `FrCoverageAMCExtension` pour ajouter des informations comme : 
* Un code de convention ou un code CSR, si applicable.
* Le contenu du **Datamatrix**, s’il est disponible.
 

-------

### Exemple d’échange de couverture sociale

Lors de la préadmission, le patient fournit ses informations de couverture sociale via un portail en ligne. Ces données sont ensuite transmises au système administratif de l’hôpital pour vérification. Voici un exemple de flux :

1. **Saisie par le patient**: Le patient renseigne ses informations d’AMO et/ou d’AMC sur le portail de préadmission.
1. **Transmission au système administratif hospitalier**: Les données sont envoyées sous forme de ressource`Coverage`, enrichie des extensions nécessaires.
1. **Vérification par l’agent administratif**: L’agent vérifie la validité des informations (dates, numéros, etc.) et fait appel aux différents téléservices.
1. **Validation ou correction**: Si tout est conforme, la couverture est validée. Sinon, une notification est envoyée au patient pour correction.

-------

### Critère de recherche autorisé

Dans le contexte de la préadmission, la ressource `Coverage` ne peut être recherchée qu’à partir du **patient**. Cela signifie que les systèmes doivent utiliser uniquement le critère `patient` pour interroger les informations de couverture, conformément aux contraintes d’implémentation définies.

```
coverage?patient=

```

### Conclusion

La gestion de la couverture sociale dans la préadmission est essentielle pour garantir une prise en charge fluide et efficace des patients. En utilisant la ressource FHIR `Coverage` et ses extensions spécifiques, les établissements de santé peuvent structurer et automatiser ce processus tout en respectant les exigences réglementaires. Que ce soit pour une AMO ou une AMC, chaque détail compte pour assurer une expérience patient optimale et une gestion administrative sans faille.

**Usages:**

* Examples for this Profile: [Coverage/coverage-amc](Coverage-coverage-amc.md), [Coverage/coverage-amo-enfant](Coverage-coverage-amo-enfant.md) and [Coverage/coverage-amo](Coverage-coverage-amo.md)
* CapabilityStatements using this Profile: [Capacités serveur FHIR pour l'IG Preadmission](CapabilityStatement-PreadmissionCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-preadmission-coverage-fr.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-preadmission-coverage-fr.csv), [Excel](../StructureDefinition-preadmission-coverage-fr.xlsx), [Schematron](../StructureDefinition-preadmission-coverage-fr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "preadmission-coverage-fr",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-coverage-fr",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionCoverageFr",
  "title" : "Fr Preadmission Coverage Profile",
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
  "description" : "Profil Coverage pour les couvertures sociales lors de la préadmission",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cdanetv4",
    "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
    "name" : "Canadian Dental Association eclaims standard"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "cpha3pharm",
    "uri" : "http://www.pharmacists.ca/",
    "name" : "Canadian Pharmacy Associaiton eclaims standard"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Coverage",
      "path" : "Coverage"
    },
    {
      "id" : "Coverage.extension",
      "path" : "Coverage.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Coverage.extension:informationsAmc",
      "path" : "Coverage.extension",
      "sliceName" : "informationsAmc",
      "short" : "Informations AMC",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/fr-coverage-amc-extended"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.identifier",
      "path" : "Coverage.identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.status",
      "path" : "Coverage.status",
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Coverage.type",
      "path" : "Coverage.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Coverage.type.coding",
      "path" : "Coverage.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Coverage.type.coding.code",
      "path" : "Coverage.type.coding.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/type-couverture-sociale-vs"
      }
    },
    {
      "id" : "Coverage.subscriber",
      "path" : "Coverage.subscriber",
      "short" : "Référence vers l’assuré",
      "definition" : "Référence vers l’assuré (et son NIR). À renseigner obligatoirement si l’assuré est différent du bénéficiaire.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.subscriberId",
      "path" : "Coverage.subscriberId",
      "short" : "Numéro de sécurité sociale ou numéro d'adhérent",
      "definition" : "Contient le numéro de sécurité sociale de l'ayant droit pour une AMO ou le numéro d'adhérent pour une AMC",
      "min" : 1
    },
    {
      "id" : "Coverage.beneficiary",
      "path" : "Coverage.beneficiary",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Coverage.relationship",
      "path" : "Coverage.relationship",
      "short" : "Lien entre l’assuré et le bénéficiaire",
      "definition" : "À renseigner obligatoirement si l’assuré est différent du bénéficiaire pour indiquer le lien entre les deux (ex. parent, conjoint, enfant)."
    },
    {
      "id" : "Coverage.relationship.coding",
      "path" : "Coverage.relationship.coding",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
