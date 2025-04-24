# Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne

Bienvenue dans le guide d'implémentation FHIR pour la pré-admission hospitalière en ligne. Ce guide est structuré en plusieurs sections pour faciliter la compréhension et l'intégration des spécifications.

---

# 📘 Contexte et Objectif

## Contexte
La pré-admission hospitalière est une étape administrative essentielle permettant à l’établissement de santé de préparer l’accueil du patient en amont. Elle consiste à recueillir, à distance, les informations nécessaires à :
- L’identification du patient,
- La gestion de sa couverture sociale,
- La collecte des documents justificatifs,
- Le recueil des consentements nécessaires.

Ce guide repose sur le standard **FHIR** pour assurer des échanges fluides, sécurisés et interopérables entre les différents systèmes impliqués.

## Objectif
Définir les spécifications d’échange de données entre :
- Un portail web de préadmission,
- Un logiciel de gestion des rendez-vous,
- Un système administratif hospitalier.

Les profils FHIR décrits ici sont adaptés au contexte français, en tenant compte des spécificités comme l'INS, la couverture sociale, et les exigences réglementaires (RGPD, hébergement HDS).

---

# 🎯 Périmètre et Acteurs

## Périmètre
Les ressources FHIR couvertes par ce guide incluent :
- **`Appointment`** : Planification d’un rendez-vous,
- **`Encounter`** : Gestion de la pré-admission administrative,
- **`Coverage`** : Déclaration de la couverture sociale (AMO/AMC),
- **`DocumentReference`** : Transmission des documents justificatifs,
- **`Consent`** : Recueil des consentements nécessaires,
- **`QuestionnaireResponse`** : Réponses aux questionnaires administratifs ou médicaux.

### Hors périmètre :
- Aspects médicaux,
- Urgences,
- Intégration clinique.

## Acteurs
Les principaux acteurs impliqués dans le processus sont :
- **Patient** : Fournit ses informations administratives, ses documents justificatifs et ses consentements,
- **Portail de pré-admission** : Plateforme en ligne pour collecter les données du patient,
- **Logiciel de rendez-vous** : Planifie les consultations et séjours,
- **Système administratif hospitalier** : Vérifie et valide les informations transmises.

---

# 🧩 Ressources FHIR & Profils

## Ressources utilisées
Les ressources FHIR suivantes sont utilisées dans le cadre de la pré-admission :
- **`Appointment`** : Gestion des rendez-vous,
- **`Encounter`** : Pré-admission administrative,
- **`Coverage`** : Gestion de la couverture sociale,
- **`DocumentReference`** : Transmission des documents justificatifs,
- **`Consent`** : Recueil des consentements,
- **`QuestionnaireResponse`** : Réponses aux questionnaires.

## Profils personnalisés
Les profils FHIR suivants ont été définis pour répondre aux besoins spécifiques de la pré-admission :
- **`PreadmissionAppointmentFr`** : Profil pour les rendez-vous,
- **`PreadmissionEncounterFr`** : Profil pour la pré-admission,
- **`PreadmissionCoverageFr`** : Profil pour la couverture sociale,
- **`PreadmissionDocumentReferenceFr`** : Profil pour les documents justificatifs,
- **`PreadmissionConsentFr`** : Profil pour les consentements.

## Extensions spécifiques

Des extensions ont été ajoutées pour enrichir les ressources FHIR et répondre aux besoins spécifiques de la préadmission hospitalière. Ces extensions permettent de capturer des informations supplémentaires essentielles au processus administratif et réglementaire.


### **1. Rattachement complémentaire (AMC)**
- **Extension :** `FrCoverageAMCExtension`
- **Ressource concernée :** `Coverage`
- **Description :** Permet de détailler les informations spécifiques à une Assurance Maladie Complémentaire (AMC), telles que :
  - Le nom de l’organisme complémentaire (`nomAMC`),
  - Le numéro d’adhérent (`numeroAMC`),
  - Le code de convention (`codeConvention`),
  - Le code CSR (`codeCSR`),
  - Un datamatrix pour les échanges numériques.
- **Exemple d’utilisation :**
  - Nom de l’AMC : Mutuelle Santé Plus
  - Numéro d’adhérent : 987654321

---

### **2. Statut de la pré-admission**
- **Extension :** `PreadmissionStatutFr`
- **Ressource concernée :** `Encounter`
- **Description :** Permet de suivre l’état administratif de la préadmission. Les statuts possibles incluent :
  - `CREATED` : Pré-admission créée,
  - `IN_PROGRESS` : Pré-admission en cours,
  - `READY` : Pré-admission prête,
  - `COMPLETED` : Pré-admission validée,
  - `REFUSED` : Pré-admission refusée.
- **Exemple d’utilisation :**
  - Statut : `READY` (Prêt pour validation)

---

### **3. Remarque du patient**
- **Extension :** `EncounterPatientComment`
- **Ressource concernée :** `Encounter`
- **Description :** Permet au patient de fournir des commentaires libres à destination de l’agent administratif.
- **Exemple d’utilisation :**
  - Remarque : "Je ne pourrai pas être présent à l’heure exacte du rendez-vous."

---

### **4. Consignes de l’agent administratif**
- **Extension :** `EncounterAgentInstructions`
- **Ressource concernée :** `Encounter`
- **Description :** Permet à l’agent administratif de transmettre des consignes spécifiques au patient.
- **Exemple d’utilisation :**
  - Consigne : "Veuillez apporter votre carte Vitale et votre carte de mutuelle."

---

### **5. Consentements liés à la préadmission**
- **Extension :** `PreadmissionConsentementsExtension`
- **Ressource concernée :** `Encounter`, `Appointment`
- **Description :** Permet de référencer un ou plusieurs consentements recueillis dans le cadre de la préadmission. Ces consentements incluent, par exemple, l’accès et l’alimentation du Dossier Médical Partagé (DMP).
- **Exemple d’utilisation :**
  - Consentement à l’accès au DMP : Informé et consentant.

---

Ces extensions enrichissent les ressources FHIR pour capturer des informations essentielles au processus de préadmission, tout en garantissant une interopérabilité et une conformité aux exigences réglementaires.

---

# 🔄 Enchaînement des Processus

## Parcours global
### 1. Portail de préadmission
- Le patient remplit un formulaire de pré-admission,
- Téléverse ses documents justificatifs (`DocumentReference`),
- Fournit ses consentements (`Consent`).

### 2. Logiciel de rendez-vous
- Création d’un rendez-vous (`Appointment`),
- Association des réponses aux questionnaires (`QuestionnaireResponse`),
- Référencement des consentements recueillis (`Consent`).

### 3. Système administratif
- Récupération des données transmises par le portail,
- Création d’une ressource `Encounter` pour la pré-admission,
- Vérification des informations administratives, de la couverture sociale (`Coverage`), et des documents justificatifs.

---

# 📝 Exemples de Ressources

## Identifiant de préadmission (VN)
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

---
Ce guide est maintenu par **Interop’Santé**, sous la spécification `PreadmissionFr`. Toute contribution ou retour est bienvenu afin d’enrichir ce référentiel.