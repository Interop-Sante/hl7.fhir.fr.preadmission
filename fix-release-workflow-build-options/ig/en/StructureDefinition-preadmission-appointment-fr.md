# Fr Preadmission Appointment Profile - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Resource Profile: Fr Preadmission Appointment Profile 

### Introduction

Dans le cadre de la préadmission hospitalière, la prise de rendez-vous est une étape essentielle qui initie le processus administratif. Elle permet de planifier une consultation ou un séjour hospitalier et de collecter les informations nécessaires à la préparation de l’admission.
 Les rendez-vous sont modélisés dans FHIR à l’aide de la ressource `Appointment`, enrichie d’extensions spécifiques pour répondre aux besoins du processus de préadmission.

-------

### Rôle de la ressource Appointment

La ressource `Appointment` joue un rôle central dans la gestion des rendez-vous liés à la préadmission. Elle permet de :

* Planifier une consultation ou un séjour hospitalier.
* Associer des questionnaires médicaux remplis par le patient.
* Référencer les consentements recueillis lors de la prise de rendez-vous.
* Coordonner les échanges entre les différents systèmes impliqués (portail patient, SIH, etc.).

-------

### Spécificités du profil PreadmissionAppointmentFr

Le profil **PreadmissionAppointmentFr** apporte des contraintes spécifiques pour répondre aux besoins de la préadmission.

#### Contraintes principales

* **Participant** : Le participant principal doit être un patient, référencé via `participant.actor` avec une ressource `Patient`.
* **Lien avec les questionnaires** : Les questionnaires de pré-admission sont associés **au rendez-vous** via `QuestionnaireResponse.subject=Appointment/{id}`.
 Les réponses peuvent être récupérées via une recherche par patient : `GET /QuestionnaireResponse?patient=Patient/{id}`

-------

### Ressource FHIR : Appointment

La ressource `Appointment` contient les informations nécessaires à la planification d’un rendez-vous. Elle inclut des métadonnées essentielles telles que la date, l’heure, les participants, et les raisons du rendez-vous.

#### Contraintes principales

* **Statut du rendez-vous** : Défini via `Appointment.status` (par exemple, `booked`, `cancelled`).
* **Description** : Permet de préciser la nature du rendez-vous (par exemple, “IRM cérébrale”).
* **Participants** : Inclut le patient et les professionnels de santé impliqués.
* **Raisons du rendez-vous** : Spécifiées via `Appointment.reasonCode`.

### Lien avec le patient

* **Lien avec le patient** : Chaque rendez-vous est directement lié à une ressource `Patient` via `participant.actor`.

### Lien avec les questionnaires

Les questionnaires de pré-admission sont associés au rendez-vous via
 `QuestionnaireResponse.subject = Appointment/{id}`.

* **Questionnaire**
 Définit la structure (questions, règles, etc.).
 Le champ `subjectType: ["Appointment"]` est **obligatoire**.
* **QuestionnaireResponse**

#### Recherche des réponses pour un RDV

```
GET /QuestionnaireResponse?subject=Appointment/1234&status=completed

```

#### Schéma des relations

Questionnaire/preadmission-rdv └─ subjectType: [“Appointment”] │ └─ questionnaire (référence) │ QuestionnaireResponse/resp-001 └─ subject: Appointment/1234 ← Lien direct RDV ↔ réponses

### Récupération des ressources liées à un rendez-vous

Dans le cadre de la préadmission, plusieurs ressources sont liées au patient associé au rendez-vous. Voici comment les récupérer :

#### Récupérer les Coverage (couvertures sociales)

Il n’existe pas de lien direct entre `Appointment` et `Coverage` dans FHIR. La méthode recommandée est :

**Approche en 2 étapes :**

```
# 1. Récupérer l'Appointment pour obtenir le patient
GET /Appointment/appt-irm-001

# 2. Extraire le patient.id depuis participant[].actor et chercher les Coverage
GET /Coverage?patient=Patient/patient-001

```

Cette requête retourne l’Appointment ainsi que toutes les Coverage du patient dans un seul Bundle.

#### Récupérer les QuestionnaireResponse

**Par subject (Appointment) :**

```
GET /QuestionnaireResponse?subject=Appointment/appt-irm-001

```

**Par patient :**

```
GET /QuestionnaireResponse?patient=Patient/patient-001

```

#### Récupérer les Consent

**Par patient :**

```
GET /Consent?patient=Patient/patient-001

```

#### Récupérer l’Encounter de préadmission

**Par appointment :**

```
GET /Encounter?appointment=Appointment/appt-irm-001

```

**Par patient :**

```
GET /Encounter?patient=Patient/patient-001

```

#### Récupérer les DocumentReference

**Via l’Encounter (si déjà connu) :**

```
GET /DocumentReference?encounter=Encounter/encounter-irm-001

```

**Via le patient :**

```
GET /DocumentReference?patient=Patient/patient-001

```

### Bonnes pratiques

* **Planification précise** : Assurez-vous que les dates et heures des rendez-vous sont correctement définies pour éviter les conflits.
* **Traçabilité des consentements** : Associez systématiquement les consentements recueillis au rendez-vous pour garantir une traçabilité complète.
* **Validation des questionnaires** : Vérifiez que les questionnaires sont remplis avant la date du rendez-vous.
* **Contexte** : un commentaire peutr être ajouté dans `Appointment.comment` pour préciser le contexte de la venue à venir (Par exemple: ALD, accident du travail, etc.).

### Conclusion

La ressource `Appointment`, enrichie d’extensions spécifiques, joue un rôle clé dans la gestion des rendez-vous liés à la préadmission hospitalière. Elle garantit une organisation structurée et conforme des informations, tout en facilitant leur traitement par les systèmes administratifs et médicaux.

**Usages:**

* Refer to this Profile: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md) and [Fr Preadmission QuestionnaireResponse Profile](StructureDefinition-preadmission-questionnaireresponse-fr.md)
* Examples for this Profile: [Appointment/appt-irm-001](Appointment-appt-irm-001.md)
* CapabilityStatements using this Profile: [Capacités serveur FHIR pour l'IG Preadmission](CapabilityStatement-PreadmissionCapabilityStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-preadmission-appointment-fr.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-preadmission-appointment-fr.csv), [Excel](../StructureDefinition-preadmission-appointment-fr.xlsx), [Schematron](../StructureDefinition-preadmission-appointment-fr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "preadmission-appointment-fr",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-appointment-fr",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionAppointmentFr",
  "title" : "Fr Preadmission Appointment Profile",
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
  "description" : "Profil Appointment pour un rendez-vous de préadmission",
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
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
        "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service"]
      }]
    }]
  }
}

```
