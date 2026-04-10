### Introduction

Ce guide présente le processus de préadmission hospitalière en ligne à travers les principales ressources FHIR utilisées. Chaque ressource est décrite avec son rôle, les interactions dans lesquelles elle est impliquée, et les contraintes spécifiques liées à son usage dans ce contexte.

---

### Appointment

**Rôle :** Prise de rendez-vous

- Créé lors de la demande de rendez-vous (plateforme ou secrétaire médicale).
- Peut contenir des extensions pour le type d’hospitalisation.
- Lien vers un ou plusieurs `QuestionnaireResponse` et `Consent`.

---

### Questionnaire / QuestionnaireResponse

**Rôle :** Recueil d'informations médicales préalables

- Utilisé pour collecter les informations comme la grossesse, les allergies, la présence de dispositifs médicaux, etc.
- Le `Questionnaire` est publié par l’hôpital.
- Le `QuestionnaireResponse` est rempli par le patient ou un professionnel.

---

### Consent

**Rôle :** Consentements RGPD et médicaux

- Permet d’indiquer :
  - Le consentement à la consultation du DMP.
  - Le consentement à la transmission de données à un portail externe.
  - Le traitement des données personnelles.
- Codé à l’aide du `PreadmissionCodeSystemConsentTypeFr`.

---

### Encounter

**Rôle :** Support de la préadmission

- Créé par le système administratif de l’hôpital après la réception du rendez-vous.
- Contient :
  - Le type d’hospitalisation (inpatient, outpatient, téléconsultation).
  - Des références à `Patient`, `Appointment`, `DocumentReference`, etc.
- Statut mis à jour selon la validation ou le rejet de la préadmission.

---

### DocumentReference

**Rôle :** Pièces justificatives du patient

- Chaque document téléversé est représenté par une ressource `DocumentReference`.
- Codé selon `PreadmissionCodeSystemDocumentTypeFr` (CNI, carte vitale, mutuelle, etc.).
- Contient un lien vers le fichier binaire (`Attachment`).

---

### Patient

**Rôle :** Informations personnelles

- Le patient est le sujet central de la préadmission.
- Les données sont créées ou mises à jour par le portail (nom, prénom, numéro de sécurité sociale, coordonnées, personne à prévenir).

---

Ce découpage par ressource permet une implémentation modulaire, chaque acteur (portail, secrétariat, SIH) manipulant uniquement les ressources pertinentes à son rôle tout en respectant les standards FHIR.

### Enchainements

#### Séquence standard

```mermaid
sequenceDiagram
    participant Patient
    participant PortailRdv as Portail de rendez-vous
    participant PortailPreadm as Portail de préadmission
    participant SAH as Système administratif de l'hôpital

    %% Étape 1 : Prise de RDV
    Patient->>PortailRdv: Prend rendez-vous
    PortailRdv-->>SAH: POST Appointment

    %% Étape 2 : Système administratif de l'hôpital initie la préadmission
    SAH->>PortailPreadm: POST Encounter (pré-admission)
    
    %% Étape 3 : Notification au patient
    PortailPreadm->>Patient: Envoi lien sécurisé (SMS / e-mail)

    %% Étape 4 : Patient renseigne ses données

    %% Étape 5 : Polling du SAH
    loop Polling régulier
        SAH->>PortailPreadm: GET Encounter / Patient / Coverage / DocumentReference / Consent
    end

    %% Étape 6 : Vérification par l'agent
    AgentBDE->>SAH: GET Encounter / Patient / Coverage / DocumentReference / Consent
    AgentBDE->>PortailPreadm: PATCH Encounter (acceptation ou refus)

    %% Étape 7 : Notification finale
    PortailPreadm->>Patient: Résultat (accepté / rejeté) par SMS/e-mail
```

#### Annulation

```mermaid
sequenceDiagram
    participant Patient
    participant PortailRdv as Portail de rendez-vous
    participant PortailPreadm as Portail de préadmission
    participant SAH as Système administratif de l'hôpital
    participant AgentBDE as Agent du Bureau des Entrées

    %% Étape 1 : Annulation du RDV
    Patient->>PortailRdv: Annule le rendez-vous
    PortailRdv-->>SAH: DELETE Appointment

    %% Étape 2 : Système administratif de l'hôpital annule la préadmission
    SAH->>PortailPreadm: DELETE Encounter (pré-admission)
```
