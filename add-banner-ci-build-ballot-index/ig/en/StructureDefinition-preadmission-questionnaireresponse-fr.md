# Fr Preadmission QuestionnaireResponse Profile - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Resource Profile: Fr Preadmission QuestionnaireResponse Profile 

### Introduction

La ressource **QuestionnaireResponse** est utilisée pour représenter les **réponses aux questionnaires** remplis par le patient dans le cadre de la préadmission hospitalière. Ces questionnaires peuvent être collectés à différents moments du processus :

* Lors de la **prise de rendez-vous**, pour recueillir des informations médicales préalables (ex : contre-indications, allergies).
* Lors de la **préadmission administrative**, pour collecter des informations complémentaires (ex : souhait de chambre particulière).

-------

### Rôle de la ressource QuestionnaireResponse

La ressource `QuestionnaireResponse` permet de :

* Enregistrer les réponses du patient à des questionnaires structurés.
* Lier les réponses au contexte approprié (rendez-vous, encounter, patient).
* Faciliter le traitement automatisé des réponses par les systèmes hospitaliers.
* Assurer la traçabilité des informations collectées.

-------

### Spécificités du profil PreadmissionQuestionnaireResponseFr

Le profil **PreadmissionQuestionnaireResponseFr** apporte des contraintes spécifiques pour répondre aux besoins de la préadmission.

#### Contraintes principales

* **Statut** : Le statut de la réponse est obligatoire (`status`).
* **Subject** : Le subject doit référencer soit : 
* Un **Appointment** pour les questionnaires de prise de rendez-vous
* Un **Encounter** pour les questionnaires de préadmission administrative
* Un **Patient** si aucun contexte spécifique
 
* **Questionnaire** : La référence au questionnaire est obligatoire.
* **Date de création** : La date à laquelle les réponses ont été fournies est obligatoire (`authored`).

-------

### Lien avec les autres ressources

#### Lien avec Appointment

Pour les questionnaires remplis lors de la **prise de rendez-vous**, le `subject` doit pointer vers l’`Appointment` :

```
{
  "resourceType": "QuestionnaireResponse",
  "subject": {
    "reference": "Appointment/appt-irm-001"
  },
  "questionnaire": "https://hl7.fr/ig/fhir/preadmission/Questionnaire/questionnaire-irm"
}

```

**Recherche des réponses pour un rendez-vous :**

```
GET /QuestionnaireResponse?subject=Appointment/appt-irm-001

```

#### Lien avec Encounter

Pour les questionnaires remplis lors de la **préadmission**, le `subject` doit pointer vers l’`Encounter` :

```
{
  "resourceType": "QuestionnaireResponse",
  "subject": {
    "reference": "Encounter/encounter-irm-externe"
  },
  "questionnaire": "https://hl7.fr/ig/fhir/preadmission/Questionnaire/questionnaire-portail"
}

```

**Recherche des réponses pour une préadmission :**

```
GET /QuestionnaireResponse?subject=Encounter/encounter-irm-externe

```

-------

### Bonnes pratiques

* **Contexte approprié** : Toujours lier la réponse au bon contexte (Appointment pour RDV, Encounter pour préadmission).
* **Validation** : Vérifier que toutes les questions obligatoires ont reçu une réponse avant de marquer le statut comme `completed`.
* **Traçabilité** : Renseigner systématiquement le champ `authored` pour tracer le moment de la réponse.
* **Author** : Utiliser le champ `author` pour identifier qui a rempli le questionnaire (généralement le patient).

-------

### Conclusion

La ressource `QuestionnaireResponse`, via le profil `PreadmissionQuestionnaireResponseFr`, joue un rôle essentiel dans la collecte structurée d’informations auprès du patient. Elle garantit une organisation cohérente et facilite l’exploitation des données par les systèmes administratifs et médicaux.

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/qr-chb-part](QuestionnaireResponse-qr-chb-part.md) and [QuestionnaireResponse/qr-irm-001](QuestionnaireResponse-qr-irm-001.md)
* CapabilityStatements using this Profile: [Capacités serveur FHIR pour l'IG Preadmission](CapabilityStatement-PreadmissionCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-preadmission-questionnaireresponse-fr.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-preadmission-questionnaireresponse-fr.csv), [Excel](../StructureDefinition-preadmission-questionnaireresponse-fr.xlsx), [Schematron](../StructureDefinition-preadmission-questionnaireresponse-fr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "preadmission-questionnaireresponse-fr",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-questionnaireresponse-fr",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionQuestionnaireResponseFr",
  "title" : "Fr Preadmission QuestionnaireResponse Profile",
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
  "description" : "Profil QuestionnaireResponse pour les réponses aux questionnaires de préadmission",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "short" : "Référence vers le rendez-vous (Appointment), l'encounter (Encounter) ou le patient (Patient)",
      "definition" : "Référence vers le contexte de la réponse : Appointment pour les questionnaires de prise de RDV, Encounter pour les questionnaires de préadmission, ou Patient si pas de contexte spécifique",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-appointment-fr",
        "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-encounter-fr",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
