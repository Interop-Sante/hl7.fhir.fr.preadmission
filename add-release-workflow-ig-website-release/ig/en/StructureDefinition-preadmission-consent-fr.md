# Fr Preadmission Consent Profile - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Resource Profile: Fr Preadmission Consent Profile 

# Consentements dans le cadre de la préadmission hospitalière

Les consentements relatifs à la préadmission hospitalière doivent être exprimés par **des ressources `Consent` distinctes** conformes à FHIR R4, chacune couvrant un aspect spécifique tel que la consultation du DMP, l’alimentation du DMP, le traitement des données personnelles (RGPD) ou le partage d’informations personnelles avec un autre logiciel (par exemple, un portail de préadmission pour contacter le patient par SMS ou e-mail). En raison des catégories différentes utilisées (`57016-8` pour le RGPD et `59284-0` pour les autres consentements), les consentements RGPD doivent être séparés des autres consentements dans des ressources `Consent` distinctes. Il est recommandé d’utiliser une ressource `Consent` par type de consentement pour une clarté maximale, bien que les consentements DMP et partage avec un logiciel puissent être regroupés dans une même ressource si nécessaire, car ils partagent la même catégorie (`59284-0`).

## Structure de la ressource Consent

Chaque consentement est structuré par des **provisions**. Une provision définit l’action pour laquelle le patient consent ou refuse un traitement. Chaque provision comporte un **code** (définissant le contenu du consentement) et un **purpose** (précisant la finalité de l’action). Une ressource `Consent` contient généralement une seule provision pour représenter un consentement spécifique (par exemple, RGPD ou consultation DMP). Dans certains cas, une ressource peut contenir plusieurs provisions si elles partagent la même catégorie (par exemple, consultation et alimentation du DMP).

## Définition des champs scope et category

Les champs **`scope`** et **`category`** aident à classifier le consentement de façon uniforme :

* **`scope`** : 
* **scope.coding.system** : `http://terminology.hl7.org/CodeSystem/consentscope`
* **scope.coding.code** : `patient-privacy`
 Cela indique que le consentement concerne la confidentialité des informations du patient.
 
* **`category`** : 
* **category.coding.system** : `http://loinc.org`
* **category.coding.code** : 
* `59284-0` (Consent Document) pour les consentements liés à l’alimentation du DMP, la consultation du DMP, et le partage avec un logiciel.
* `57016-8` (Privacy Policy Acknowledgment Document) pour le consentement RGPD.
 Ces codes LOINC standardisés identifient le type de document de consentement. En raison de ces catégories différentes, une ressource `Consent` ne peut pas combiner le RGPD avec les autres consentements ; ils doivent être séparés en ressources distinctes.
 
 

Ces valeurs sont appliquées systématiquement afin d’assurer une classification conforme aux standards d’interopérabilité FHIR R4.

## Types de consentements et leurs champs

### Recueil des consentements liés à Mon Espace Santé

Le recueil des consentements des patients est défini conformément aux dispositions de l’article **R. 1111-46 du Code de la santé publique**, tel que précisé dans **l’annexe 4** disponible sur Légifrance :
 [https://www.legifrance.gouv.fr/jorf/article_jo/JORFARTI000048368264](https://www.legifrance.gouv.fr/jorf/article_jo/JORFARTI000048368264)

Ce dispositif encadre les conditions de **recueil**, de **conservation** et de **traçabilité du consentement** des personnes concernées, afin de garantir le respect de leurs droits en matière d’information, de confidentialité et de protection des données de santé.

Le **recueil du consentement** doit être effectué **à chaque nouvel épisode de soin**, afin de s’assurer que le patient est pleinement informé et consentant pour **chaque prise en charge**.

### Consentement pour la consultation du DMP

* **Objectif** : Permettre au patient de donner ou de refuser son consentement pour la consultation de son Dossier Médical Partagé (DMP).
* **Ressource dédiée** : Une ressource `Consent` distincte avec `category` `59284-0`.
* **Provisions** : 
* **Code** : `access` (indiquant l’accès aux données du DMP, issu du `CodeSystem` `http://terminology.hl7.org/CodeSystem/consentaction`).
* **Purpose** : `TREAT`
 (Ce code, issu du `ValueSet` `http://hl7.org/fhir/ValueSet/v3-PurposeOfUse`, signale que l’accès au DMP a pour finalité la prise en charge clinique.)
* **Validation** : 
* `permit` si le consentement est donné.
* `deny` en cas de refus.
 
* **Cas d’absence de consentement explicite** :
 En l’absence d’une réponse claire (ni consentement ni refus), le champ `provision.type` est laissé vide pour indiquer l’absence de consentement explicite.
 

### Consentement pour l’alimentation du DMP

* **Objectif** : Permettre au patient de consentir ou refuser l’alimentation (mise à jour) de son DMP.
* **Ressource dédiée** : Une ressource `Consent` distincte avec `category` `59284-0`, ou combinée avec la consultation DMP ou le partage avec un logiciel si plusieurs provisions sont nécessaires.
* **Provisions** : 
* **Code** : `collect` (indiquant la collecte de données pour le DMP, issu du `CodeSystem` `http://terminology.hl7.org/CodeSystem/consentaction`).
* **Purpose** : `TREAT`
 (Ce code précise que l’alimentation du DMP s’inscrit dans la prise en charge clinique.)
* **Validation** : 
* `permit` en cas d’accord.
* `deny` en cas de refus.
 
* **Cas d’absence de position explicite** :
 En l’absence d’une réponse claire (ni consentement ni refus), le champ `provision.type` est laissé vide pour indiquer l’absence de consentement explicite.
 

### Consentement au RGPD

* **Objectif** : Permettre au patient de consentir ou refuser le traitement de ses données personnelles dans le cadre du RGPD.
* **Ressource dédiée** : Une ressource `Consent` distincte avec `category` `57016-8`, séparée des autres consentements en raison de la catégorie différente.
* **Provisions** : 
* **Code** : `collect` (indiquant la collecte de données personnelles, issu du `CodeSystem` `http://terminology.hl7.org/CodeSystem/consentaction`).
* **Purpose** : `PATREQ`
 (Ce code, issu du `ValueSet` `http://hl7.org/fhir/ValueSet/v3-PurposeOfUse`, indique que le traitement des données repose sur une demande explicite du patient, conformément aux exigences du RGPD.)
* **Validation** : 
* `permit` si le consentement est accordé.
* `deny` en cas de refus.
 
 

### Consentement pour le partage des informations personnelles avec un autre logiciel

* **Objectif** : Permettre au patient de consentir ou refuser le partage de ses informations personnelles (par exemple, numéro de téléphone ou adresse e-mail) avec un logiciel tiers pour des communications directes, telles que l’envoi de SMS ou d’e-mails (par exemple, rappels de rendez-vous ou informations administratives).
* **Ressource dédiée** : Une ressource `Consent` distincte avec `category` `59284-0`, ou combinée avec les consentements DMP si plusieurs provisions sont nécessaires.
* **Provisions** : 
* **Code** : `disclose` (indiquant la divulgation d’informations à un tiers, issu du `CodeSystem` `http://terminology.hl7.org/CodeSystem/consentaction`).
* **Purpose** : `PATREQ`
 (Ce code, issu du `ValueSet` `http://hl7.org/fhir/ValueSet/v3-PurposeOfUse`, indique que le partage d’informations est effectué à la demande explicite du patient pour permettre des communications directes.)
* **Validation** : 
* `permit` en cas d’autorisation.
* `deny` en cas de refus.
 
 

## Cas particulier : consentements DMP non recueillis

Dans certains cas, le consentement pour la consultation ou l’alimentation du DMP peut ne pas être explicitement exprimé (ni acceptation, ni refus clairement indiqué). Dans ce contexte, il est recommandé de :

* Créer une ressource `Consent` pour documenter l’absence de consentement explicite, avec `category` `59284-0`.
* Laisser le champ **`provision.type`** vide (non défini) pour indiquer qu’aucune décision formelle n’a été exprimée.

Cette approche permet de garantir une traçabilité précise et de distinguer un refus explicite d’une absence de réponse.

## Résumé des champs à renseigner pour chaque consentement

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Consultation du DMP | 59284-0 | access | TREAT | `permit`,`deny`ou vide |
| Alimentation du DMP | 59284-0 | collect | TREAT | `permit`,`deny`ou vide |
| RGPD | 57016-8 | collect | PATREQ | `permit`ou`deny` |
| Partage des informations personnelles | 59284-0 | disclose | PATREQ | `permit`ou`deny` |

## Utilisation des codes pour le champ provision.purpose dans les Consent

Dans le cadre de la préadmission hospitalière, nous utilisons des codes issus du `ValueSet` `http://hl7.org/fhir/ValueSet/v3-PurposeOfUse` pour préciser la finalité des provisions dans la ressource `Consent`. Les choix retenus sont :

* **TREAT** pour la consultation et l’alimentation du DMP
 (Indiquant que le consentement soutient la prise en charge clinique.)
* **PATREQ** pour le traitement des données personnelles (RGPD) et le partage d’informations personnelles avec un logiciel tiers
 (Indiquant que ces actions reposent sur une demande explicite du patient, conforme au RGPD ou aux préférences de communication du patient.)

## Récupération de la ressource Consent liée à un Appointment ou un Encounter

Pour récupérer les ressources Consent associées à un rendez-vous (Appointment) ou à un séjour (Encounter), il est recommandé d’utiliser le champ Consent.data. Ce champ permet de référencer directement les ressources concernées par le consentement.

> **Exemple de requête GET : récupérer les consentements liés à un rendez-vous (Appointment)** :
 `GET [base]/Consent?data=Appointment/5678`
 Cette requête retourne tous les consentments associées au rendez-vous d’ID `5678`.

> **Exemple de requête GET : récupérer les consentements liés à un séjour (Encounter)** : `GET [base]/Consent?data=Encounter/9876` Cette requête retourne tous les consentments associées à l’encounter d’ID `9876`.

**Usages:**

* Examples for this Profile: [Consent/consentement-dmp-alimentation](Consent-consentement-dmp-alimentation.md), [Consent/consentement-dmp-consultation](Consent-consentement-dmp-consultation.md), [Consent/consentement-multi](Consent-consentement-multi.md) and [Consent/consentement-refus-rgpd](Consent-consentement-refus-rgpd.md)
* CapabilityStatements using this Profile: [Capacités serveur FHIR pour l'IG Preadmission](CapabilityStatement-PreadmissionCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-preadmission-consent-fr.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-preadmission-consent-fr.csv), [Excel](../StructureDefinition-preadmission-consent-fr.xlsx), [Schematron](../StructureDefinition-preadmission-consent-fr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "preadmission-consent-fr",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-consent-fr",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionConsentFr",
  "title" : "Fr Preadmission Consent Profile",
  "status" : "active",
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
  "description" : "Profil Consent pour les consentements lors de la préadmission",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "fixedCode" : "active"
    },
    {
      "id" : "Consent.scope",
      "path" : "Consent.scope",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "patient-privacy"
        }]
      }
    },
    {
      "id" : "Consent.category.coding",
      "path" : "Consent.category.coding",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-consent-category-vs"
      }
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }]
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "min" : 1
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "min" : 1
    },
    {
      "id" : "Consent.provision.type",
      "path" : "Consent.provision.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/consent-provision-type"
      }
    },
    {
      "id" : "Consent.provision.provision",
      "path" : "Consent.provision.provision",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "Consent.provision.provision.type",
      "path" : "Consent.provision.provision.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/consent-provision-type"
      }
    },
    {
      "id" : "Consent.provision.provision.purpose",
      "path" : "Consent.provision.provision.purpose",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-consent-purpose-reason-vs"
      }
    },
    {
      "id" : "Consent.provision.provision.code",
      "path" : "Consent.provision.provision.code",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-consent-code-vs"
      }
    }]
  }
}

```
