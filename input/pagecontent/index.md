### Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne

Bienvenue dans le guide d'implémentation FHIR pour la pré-admission hospitalière en ligne. Ce document est structuré en plusieurs sections pour faciliter la compréhension et l'intégration des spécifications de notre Interopérabilité.

#### Contexte et Objectif

##### Contexte

La pré-admission hospitalière est une étape administrative essentielle qui permet à l'établissement de santé de préparer l'accueil du patient en amont. Elle consiste à recueillir, à distance, les informations nécessaires pour :

- L’identification du patient,
- La gestion de sa couverture sociale,
- La collecte des documents justificatifs,
- Le recueil des consentements nécessaires.

Ce guide s'appuie sur le standard **FHIR** afin d'assurer des échanges fluides, sécurisés et interopérables entre les différents systèmes impliqués.

##### Objectif

Définir les spécifications d'échange de données entre :

- Un portail web de pré-admission,
- Un logiciel de gestion des rendez-vous,
- Un système administratif hospitalier.

Les profils FHIR décrits ici ont été adaptés au contexte français, en tenant compte des spécificités telles que l'INS, la couverture sociale (AMO/AMC) et les exigences réglementaires (Consentements au DMP, RGPD).

#### Périmètre et Acteurs

##### Périmètre

Les ressources FHIR couvertes par ce guide incluent :

- **`Appointment`** : Planification d’un rendez-vous.
- **`Encounter`** : Gestion de la pré-admission administrative, incluant les réponses aux questionnaires administratifs.
- **`Coverage`** : Déclaration de la couverture sociale (AMO/AMC).
- **`DocumentReference`** : Transmission des documents justificatifs.
- **`Consent`** : Recueil des consentements nécessaires.
- **`QuestionnaireResponse`** : Réponses aux questionnaires administratifs ou préparant une prise de rendez-vous.

###### Hors périmètre

- Aspects purement médicaux (par exemple, antécédents cliniques, diagnostics).
- Cas d'urgence.
- Intégration clinique.

##### Acteurs

Les principaux acteurs impliqués dans le processus sont :

- **Le Patient** : Fournit ses informations administratives, ses documents justificatifs, ses consentements, et ses réponses aux questionnaires.
- **Le Portail de pré-admission** : Plateforme en ligne pour la collecte des données du patient.
- **Le Logiciel de rendez-vous** : Organise et planifie les consultations et séjours.
- **Le Système administratif hospitalier** : Vérifie et valide les informations reçues.

#### Ressources FHIR & Profils

##### Ressources utilisées

Les ressources FHIR suivantes sont utilisées dans le cadre de la pré-admission :

- **`Appointment`** : Gestion des rendez-vous.
- **`Encounter`** : Pré-admission administrative, liée à des `QuestionnaireResponse` pour les réponses aux questionnaires administratifs via l’extension `PreadmissionQuestionnaireExtension`.
- **`Coverage`** : Gestion de la couverture sociale.
- **`DocumentReference`** : Transmission des documents justificatifs.
- **`Consent`** : Recueil des consentements.
- **`QuestionnaireResponse`** : Réponses aux questionnaires administratifs.

##### Profils personnalisés

Les profils FHIR suivants ont été créés pour répondre aux besoins spécifiques de la pré-admission, basés sur les profils **FR Core** :

- **`PreadmissionAppointmentFr`** : Profil pour la planification des rendez-vous, basé sur `FRCoreAppointmentProfile`.
- **`PreadmissionEncounterFr`** : Profil pour la gestion de la pré-admission, basé sur `FRCoreEncounterProfile`.
- **`PreadmissionCoverageFr`** : Profil pour la couverture sociale, basé sur `FRCoreCoverageProfile`.
- **`PreadmissionDocumentReferenceFr`** : Profil pour les documents justificatifs, basé sur `FRCoreDocumentReferenceProfile`.
- **`PreadmissionConsentFr`** : Profil pour le recueil des consentements, basé sur `Consent`.

##### Extensions spécifiques

Pour enrichir les ressources FHIR et répondre aux besoins particuliers de la pré-admission hospitalière, plusieurs extensions personnalisées ont été créées. Ces extensions permettent de saisir des informations supplémentaires essentielles au processus administratif et réglementaire :

###### Rattachement complémentaire (AMC)

- **Extension :** `FrCoverageAMCExtension`
- **Ressource concernée :** `Coverage`
- **Description :** Permet de détailler les informations spécifiques à une Assurance Maladie Complémentaire (AMC), telles que le nom de l’organisme complémentaire, le numéro d’adhérent, le code de convention, le code CSR, et un datamatrix pour les échanges numériques.

###### Statut de la pré-admission

- **Extension :** `PreadmissionStatutFr`
- **Ressource concernée :** `Encounter`
- **Description :** Permet de suivre l’état administratif de la pré-admission, avec des statuts tels que créé, en cours, prêt, validé, ou refusé.

###### Remarque du patient

- **Extension :** `EncounterPatientComment`
- **Ressource concernée :** `Encounter`
- **Description :** Permet au patient de fournir des commentaires libres destinés à l’agent administratif.

###### Consignes de l’agent administratif

- **Extension :** `EncounterAgentInstructions`
- **Ressource concernée :** `Encounter`
- **Description :** Permet à l'agent administratif de transmettre des consignes spécifiques au patient.

###### Consentements liés à la pré-admission

- **Extension :** `PreadmissionConsentementsExtension`
- **Ressource concernée :** `Encounter` et `Appointment`
- **Description :** Permet de référencer un ou plusieurs consentements recueillis dans le cadre de la pré-admission, par exemple pour l’accès ou l’alimentation du Dossier Médical Partagé (DMP).

###### Questionnaire lié à la pré-admission

- **Extension :** `PreadmissionQuestionnaireExtension`
- **Ressource concernée :** `Encounter` et `Appointment`
- **Description :** Permet de référencer une ou plusieurs réponses à des questionnaires administratifs (par exemple, demande de chambre particulière) recueillies dans le cadre de la pré-admission.

#### Enchaînement des Processus

##### Parcours global

###### Logiciel de rendez-vous

- Création d’un rendez-vous (`Appointment`).
- Association des réponses aux questionnaires (`QuestionnaireResponse`).
- Référencement des consentements recueillis (`Consent`).

###### Système administratif

- Récupération des données transmises par le portail.
- Création d’une ressource `Encounter` pour la pré-admission, incluant les références aux `QuestionnaireResponse` pour les réponses aux questionnaires.
- Vérification des informations administratives, de la couverture sociale (`Coverage`), et des documents justificatifs (`DocumentReference`).

###### Portail de pré-admission

- Le patient remplit un formulaire de pré-admission.
- Téléverse ses documents justificatifs (`DocumentReference`).
- Fournit ses consentements (`Consent`).
- Répond à des questionnaires administratifs, enregistrés dans des `QuestionnaireResponse` liées à l’`Encounter`.

#### Exemples de Ressources

##### Identifiant de pré-admission (VN)

```json
"identifier": [
  {
    "use": "temp",
    "type": {
      "coding": [
        {
          "system": "http://interopsante.org/fhir/CodeSystem/fr-core-identifier-type",
          "code": "VN",
          "display": "Visit Number"
        }
      ]
    },
    "system": "urn:oid:1.2.250.1.71.4.2.2.1330780321.z",
    "value": "2455"
  }
]
```