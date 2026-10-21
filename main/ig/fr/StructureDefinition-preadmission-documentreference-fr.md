# Fr Preadmission DocumentReference Profile - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Profil de ressource: Fr Preadmission DocumentReference Profile 

### Objectif

Dans le cadre de la préadmission hospitalière, le patient est invité à fournir certains **documents administratifs** nécessaires à la validation de son dossier. Ces documents permettent à l’établissement de santé de vérifier l’identité, la couverture sociale du patient avant son admission.

Les documents sont modélisés dans FHIR à l’aide de la ressource `DocumentReference`, enrichie d’extensions spécifiques pour répondre aux besoins du processus de préadmission.

-------

### Documents typiques à fournir

Ces documents sont modélisés dans FHIR à l’aide de la ressource `DocumentReference`, avec le type de document contraint par le `ValueSet` [`PreadmissionValueSetDocumentTypeFr`](ValueSet-preadmission-document-type-vs.md).

-------

### Ressource FHIR : DocumentReference

La ressource `DocumentReference` est utilisée pour représenter chaque document transmis par le patient. Elle contient des métadonnées essentielles telles que le type de document, la date de création, et un lien vers le fichier téléversé.

#### Contraintes principales

* **Type de document** : Obligatoire, défini via l’extension `PreadmissionTypeDocumentFr`.
* **Lien avec la préadmission** : Chaque document doit être associé à un `Encounter` via `DocumentReference.context.encounter`.

-------

### Critère de recherche autorisé

Dans le contexte de la préadmission, la ressource `DocumentReference` peut être recherchée :

* à partir de l’**encounter** (documents liés à une préadmission)
* et, si nécessaire, à partir du **patient** (liste des documents du patient)

```
documentreference?encounter=

```

```
documentreference?patient=

```

### Bonnes pratiques

* **Validation des documents** : Chaque document téléversé doit être vérifié par un agent administratif pour s’assurer de sa conformité (lisibilité, validité, etc.).
* **Traçabilité** : Les documents doivent être horodatés et associés à un Encounter pour garantir une traçabilité complète.
* **Respect des réglementations** : Les documents doivent être stockés conformément aux exigences légales (RGPD, hébergement HDS, etc.).
* **Gestion des erreurs** : En cas de document manquant ou non conforme, une notification doit être envoyée au patient pour lui permettre de corriger ou compléter son dossier.

### Conclusion

La ressource `DocumentReference` joue un rôle clé dans la gestion des pièces justificatives pour la préadmission hospitalière. Elle garantit une organisation structurée et conforme des documents, tout en facilitant leur traitement par les agents administratifs.

**Utilisations:**

* Exemples pour ce/t/te Profil: [DocumentReference/documentreference-cni-recto](DocumentReference-documentreference-cni-recto.md)
* CapabilityStatements utilisant ce Profil: [Capacités serveur FHIR pour l'IG Preadmission](CapabilityStatement-PreadmissionCapabilityStatement.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.fr.preadmission|current/StructureDefinition/preadmission-documentreference-fr)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) 

 

Autres représentations du profil : [CSV](../StructureDefinition-preadmission-documentreference-fr.csv), [Excel](../StructureDefinition-preadmission-documentreference-fr.xlsx), [Schematron](../StructureDefinition-preadmission-documentreference-fr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "preadmission-documentreference-fr",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-documentreference-fr",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionDocumentReferenceFr",
  "title" : "Fr Preadmission DocumentReference Profile",
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
  "description" : "Profil DocumentReference pour un document administratif de préadmission",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-document-type-vs|1.0.0-ballot"
      }
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context",
      "path" : "DocumentReference.context",
      "min" : 1
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-encounter-fr|1.0.0-ballot"]
      }]
    }]
  }
}

```
