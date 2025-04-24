# Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne

Bienvenue dans le guide d'implémentation FHIR pour la pré-admission hospitalière en ligne. Ce guide est structuré en plusieurs sections pour faciliter la compréhension.

# 📘 Contexte et Objectif

## Contexte
La pré-admission hospitalière est une étape administrative essentielle permettant à l’établissement de santé de préparer l’accueil du patient en amont. Elle consiste à recueillir, à distance, les informations nécessaires à l’identification du patient, à la gestion de sa couverture sociale et à la collecte des documents justificatifs avant son arrivée à l’hôpital.

Ce guide propose une architecture basée sur le standard **FHIR** pour assurer des échanges fluides, sécurisés et interopérables entre les différents systèmes impliqués.

## Objectif
Définir les spécifications d’échange de données entre :
- un portail web patient
- un logiciel de gestion des rendez-vous
- un système administratif hospitalier

Il repose sur des profils FHIR adaptés au contexte français (INS, couverture sociale, pièces justificatives).

# 🎯 Périmètre et Acteurs

## Périmètre
- `Appointment` : planification d’un rendez-vous
- `Encounter` : pré-admission administrative
- `Coverage` : déclaration de couverture sociale
- `DocumentReference` : transmission de documents justificatifs

### Hors périmètre :
- Aspects médicaux
- Urgences
- Intégration clinique

## Acteurs
- Patient
- Portail de pré-admission
- Logiciel de rendez-vous
- Système administratif hospitalier

# 🧩 Ressources FHIR & Profils

## Ressources utilisées
- `Appointment`, `Encounter`, `Coverage`, `DocumentReference`, `Patient`, `Consent`, `QuestionnaireResponse`

## Profils personnalisés
- `PreadmissionAppointmentFr`
- `PreadmissionEncounterFr`
- `PreadmissionCoverageFr`
- `PreadmissionDocumentReferenceFr`

## Extensions spécifiques
- Type de pièce d’identité
- Identifiant INS
- Rattachement complémentaire

## Conformité nationale
- INS comme identifiant principal
- Hébergement HDS
- Alignement ANS

# 🔄 Enchaînement des Processus

## Parcours global
### 1. Portail patient
- Questionnaire libre
- Téléversement de documents
- Consentement DMP

### 2. Logiciel de rendez-vous
- Création de `Appointment`
- Association : `QuestionnaireResponse`, `Consent`

### 3. Système administratif
- Récupération des données
- Création `Encounter` (VN temporaire)
- Vérification `Coverage`

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

## Questionnaire de contexte
- Implant ? Allergies ? Aide médicale ? Contre-indications ?

## Consentement DMP

| Description                      | Type     |
|----------------------------------|----------|
| Opposition bris de glace         | Oui / Non |
| Opposition centre régulation     | Oui / Non |
| Date de recueil                  | Date      |


---
Ce guide est maintenu par **Interop’Santé**, sous la spécification `PreadmissionFr`. Toute contribution ou retour est bienvenu afin d’enrichir ce référentiel.