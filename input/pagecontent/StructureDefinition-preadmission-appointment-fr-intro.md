### Introduction

Dans le cadre de la préadmission hospitalière, la prise de rendez-vous est une étape essentielle qui initie le processus administratif. Elle permet de planifier une consultation ou un séjour hospitalier et de collecter les informations nécessaires à la préparation de l’admission.  
Les rendez-vous sont modélisés dans FHIR à l’aide de la ressource `Appointment`, enrichie d’extensions spécifiques pour répondre aux besoins du processus de préadmission.

---

### Rôle de la ressource `Appointment`

La ressource `Appointment` joue un rôle central dans la gestion des rendez-vous liés à la préadmission. Elle permet de :

- Planifier une consultation ou un séjour hospitalier.
- Associer des questionnaires médicaux remplis par le patient.
- Référencer les consentements recueillis lors de la prise de rendez-vous.
- Coordonner les échanges entre les différents systèmes impliqués (portail patient, SIH, etc.).

---

### Spécificités du profil `PreadmissionAppointmentFr`

Le profil **PreadmissionAppointmentFr** apporte des contraintes et des extensions spécifiques pour répondre aux besoins de la préadmission.

#### **Extensions spécifiques**

- **`PreadmissionAppointmentQuestionnaireResponseFr`** : Permet de référencer un ou plusieurs `QuestionnaireResponse` remplis par le patient dans le cadre de la préadmission.

#### **Contraintes principales**

- **Participant** : Le participant principal doit être un patient, référencé via `participant.actor` avec une ressource `Patient`.
è- **Lien avec les questionnaires** : Les questionnaires de pré-admission sont associés **au rendez-vous** via `QuestionnaireResponse.subject=Appointment/{id}`.  
  Recherche : `GET /QuestionnaireResponse?subject=Appointment/1234` 

---

### Ressource FHIR : `Appointment`

La ressource `Appointment` contient les informations nécessaires à la planification d’un rendez-vous. Elle inclut des métadonnées essentielles telles que la date, l’heure, les participants, et les raisons du rendez-vous.

#### Contraintes principales

- **Statut du rendez-vous** : Défini via `Appointment.status` (par exemple, `booked`, `cancelled`).
- **Description** : Permet de préciser la nature du rendez-vous (par exemple, "IRM cérébrale").
- **Participants** : Inclut le patient et les professionnels de santé impliqués.
- **Raisons du rendez-vous** : Spécifiées via `Appointment.reasonCode`.

### Lien avec le patient
 
- **Lien avec le patient** : Chaque rendez-vous est directement lié à une ressource `Patient` via `participant.actor`.

### Lien avec les questionnaires

Les questionnaires de pré-admission sont associés au rendez-vous via  
`QuestionnaireResponse.subject = Appointment/{id}`.

- **Questionnaire**  
  Définit la structure (questions, règles, etc.).  
  Le champ `subjectType: ["Appointment"]` est **obligatoire**.

- **QuestionnaireResponse**  
  - Référence le questionnaire via  
    `questionnaire: "Questionnaire/preadmission-rdv"`
  - Lie les réponses au rendez-vous via  
    `subject = Appointment/{id}`

#### Recherche des réponses pour un RDV

```http
GET /QuestionnaireResponse?subject=Appointment/1234&status=completed
```

#### Schéma des relations
Questionnaire/preadmission-rdv
  └─ subjectType: ["Appointment"]
          │
          └─ questionnaire (référence)
                │
QuestionnaireResponse/resp-001
  └─ subject: Appointment/1234   ← Lien direct RDV ↔ réponses


### Bonnes pratiques

- **Planification précise** : Assurez-vous que les dates et heures des rendez-vous sont correctement définies pour éviter les conflits.
- **Traçabilité des consentements** : Associez systématiquement les consentements recueillis au rendez-vous pour garantir une traçabilité complète.
- **Validation des questionnaires** : Vérifiez que les questionnaires sont remplis avant la date du rendez-vous.
- **Contexte** : un commentaire peutr être ajouté dans `Appointment.comment` pour préciser le contexte de la venue à venir (Par exemple: ALD, accident du travail, etc.).

### Conclusion

La ressource `Appointment`, enrichie d’extensions spécifiques, joue un rôle clé dans la gestion des rendez-vous liés à la préadmission hospitalière. Elle garantit une organisation structurée et conforme des informations, tout en facilitant leur traitement par les systèmes administratifs et médicaux.
