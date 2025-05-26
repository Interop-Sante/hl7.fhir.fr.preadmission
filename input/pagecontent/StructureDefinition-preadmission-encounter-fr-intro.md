### Introduction

La ressource **Encounter** est utilisée comme support central pour représenter une **pré-admission hospitalière**. Elle regroupe les informations essentielles pour le traitement administratif d’un séjour ou d’une consultation prévue à l’hôpital, en lien avec un rendez-vous initial.

---

### Rôle de la ressource Encounter

La ressource `Encounter` est créée par le **système administratif** de l’hôpital, généralement à partir d’un rendez-vous saisi via une plateforme ou par un professionnel de santé. Elle joue un rôle central dans la gestion de la préadmission en permettant de :

- Suivre l’état administratif de la préadmission.
- Centraliser les données fournies par le patient.
- Référencer les consentements.
- Coordonner les échanges entre les différents systèmes hospitaliers.

---

### Suivi de la préadmission : Extension `PreadmissionStatutFr`

Le **statut de la préadmission** est représenté à l’aide de l’extension `PreadmissionStatutFr`. Cette extension permet de suivre l’état administratif de la préadmission avec les valeurs suivantes :

- `CREATED` : Pré-admission créée mais non encore traitée.
- `IN_PROGRESS` : Pré-admission en cours de traitement dans le **portail de préadmission**. La patient n'a pas encore renseigner ses informations.
- `READY` : Les informations ont été renseignées par le patient dans le portail de préadmission. Celle-ci peut-être récupérée par le **système administratif** de l’hôpital
- `COMPLETED` : Pré-admission validée et finalisée.
- `REFUSED` : Pré-admission refusée avec un motif explicatif.
- `CANCELLED` : Pré-admission en cours d'annulation.

Cette extension est obligatoire dans le profil et remplace l’utilisation directe de `Encounter.status` pour refléter l’état administratif.

---

### Cycle de vie de la préadmission

Le cycle de vie de la préadmission est géré à travers le champ `preadmission_status`, qui évolue en fonction des actions réalisées par le patient ou l’agent administratif. Voici les étapes principales :

### Cycle de vie de la préadmission

Le cycle de vie de la préadmission est géré à travers le champ `preadmission_status`, qui évolue en fonction des actions réalisées par le patient ou l’agent administratif. Voici les étapes principales :

| **Action**                     | **Statut**                     | **Description**                                                                 |
|--------------------------------|---------------------------------|---------------------------------------------------------------------------------|
| **POST**                       | `CREATED`                      | La préadmission est créée par le système administratif ou le portail patient.   |
| **GET**                        | `IN_PROGRESS`                  | La préadmission est commencée par le patient.                                  |
| **PATCH**                      | `READY`                        | La préadmission est terminée par le patient et prête pour validation.          |
| **PATCH**                      | `CANCELLED`                    | La préadmission est annulée par le patient ou l’agent administratif.           |
| **PATCH**                      | `IN_PROGRESS`                  | La préadmission est modifiée (ex. changement de date ou d’informations).       |
| **PATCH**                      | `REFUSED`                      | La préadmission est rejetée par l’agent administratif avec un motif explicatif. |
| **PATCH**                      | `COMPLETED`                    | La préadmission est validée par l’agent administratif.                         |
| **DELETE**                     | *(Supprimée)*                  | La préadmission est annulée.                                                   |


---

### Spécificités du profil `PreadmissionEncounterFr`

Le profil **PreadmissionEncounterFr** apporte les contraintes suivantes :

#### **Extensions obligatoires**

- **`PreadmissionStatutFr`** : Permet de suivre l’état administratif de la préadmission. Cette extension est obligatoire et utilise un `ValueSet` spécifique pour définir les statuts possibles (`CREATED`, `IN_PROGRESS`, `READY`, `COMPLETED`, `REFUSED`).

#### **Extensions optionnelles**

- **`EncounterPatientComment`** : Permet d’ajouter des commentaires libres fournis par le patient à destination de l’agent administratif. Ces commentaires sont représentés sous forme de texte libre (`string`).
- **`EncounterAgentInstructions`** : Permet de transmettre des consignes spécifiques aux agents hospitaliers. Ces consignes sont également représentées sous forme de texte libre (`string`).
- **`PreadmissionConsentementsExtension`** : Référence un ou plusieurs consentements recueillis dans le cadre de la préadmission. Ces consentements sont modélisés à l’aide de la ressource `Consent` et incluent des informations comme l’accès au DMP ou d’autres autorisations administratives.

#### **Contraintes sur les champs principaux**

- **`Encounter.status`** : Fixé à `planned` pour indiquer que l’Encounter est prévu.
- **`Encounter.type`** : Définit le type d’Encounter (hospitalisation, consultation externe, téléconsultation).
- **`Encounter.subject`** : Référence obligatoire vers le `Patient` concerné.
- **`Encounter.appointment`** : Référence obligatoire vers le `Appointment` à l’origine de la préadmission.

---

### Critères de recherche autorisés

Les critères de recherche suivants sont disponibles pour le profil `PreadmissionEncounterFr` :

- **Date de dernière mise à jour** : Permet de rechercher les préadmissions en fonction de la date de leur dernière modification (`_lastUpdated`).
- **Date de la venue** : Permet de rechercher les préadmissions en fonction de la période prévue pour la venue (`date`).
- **Statut de la préadmission** : Permet de rechercher les préadmissions selon leur statut (`preadmissionStatus`).

---

### Gestion des refus, validations et suppressions

#### **En cas de refus**

- Le statut de la préadmission est mis à `REFUSED`.
- Le motif du refus est renseigné dans l’extension `EncounterAgentInstructions`, qui permet de transmettre des consignes ou des commentaires spécifiques à l’agent du Bureau des Entrées (BDE).
- Le portail de préadmission est notifié du refus, accompagné du motif explicatif.

#### **En cas de validation**

- Le statut de la préadmission est mis à `ACCEPTED`.
- Le portail de préadmission est notifié de la validation, confirmant que la préadmission est complète et prête pour la venue du patient.


#### **En cas de suppression**

- Si la préadmission est annulée de manière définitive, la ressource `Encounter` peut être supprimée via une requête `DELETE`.
- Cette action intervient généralement lorsqu'aucun traitement administratif n’a été engagé et que la préadmission devient caduque.
- Le portail de préadmission est informé de cette suppression afin d’aligner l’état de la demande côté patient.

---

### Exemple d’utilisation

Voici un exemple d’utilisation de la ressource `Encounter` pour une préadmission :

- **Statut administratif** : `IN_PROGRESS`
- **Patient** : Référencé via `Encounter.subject`.
- **Rendez-vous initial** : Référencé via `Encounter.appointment`.
- **Consentements** : Transmis via l’extension dédiée `PreadmissionConsentementsExtension`, qui référence un ou plusieurs consentements modélisés à l’aide de la ressource `Consent`.

---

### Critères de recherche autorisés

Les critères de recherche suivants sont disponibles pour le profil `PreadmissionEncounterFr` :

- **Date de dernière mise à jour** : Permet de rechercher les préadmissions en fonction de la date de leur dernière modification (`_lastUpdated`).
- **Date de la venue** : Permet de rechercher les préadmissions en fonction de la période prévue pour la venue (`date`).
- **Statut de la préadmission** : Permet de rechercher les préadmissions selon leur statut (`preadmission-status`).
- **Patient** : Permet de rechercher les préadmissions liées à un patient donné, en filtrant par l’identifiant du patient (`subject`).

> **Exemple de requête** :  
> `GET [base]/Encounter?subject=Patient/12345`  
> Cette requête retourne toutes les préadmissions associées au patient d’ID `12345`.


> **Exemple de requête** :  
> `GET [base]/Encounter?date=lt2025-06-09&_lastUpdated=ge2025-05-26T10:00:00Z&preadmission-status=ready,cancelled`
> Cette requête retourne toutes les préadmissions prévues dans moins de 7 jours, qui ont été modifiées sur le portail de préadmission depuis 1 heure et qui sont, soit prêtes à être traitées par le bureau des entrées, soit annulées.


---

### Conclusion

La ressource `Encounter`, enrichie d’extensions spécifiques, est le **pivot de la coordination des informations de préadmission**. Elle permet d’aligner les processus numériques sur les réalités administratives hospitalières tout en conservant une traçabilité complète du traitement des dossiers.
