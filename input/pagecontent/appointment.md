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
- **`PreadmissionConsentementsExtension`** : Permet de référencer un ou plusieurs consentements recueillis lors de la prise de rendez-vous. Ces consentements sont modélisés à l’aide de la ressource `Consent`.

#### **Contraintes principales**

- **Participant** : Le participant principal doit être un patient, référencé via `participant.actor` avec une ressource `Patient`.
- **Lien avec les questionnaires** : Les questionnaires médicaux remplis par le patient sont référencés via l’extension `PreadmissionAppointmentQuestionnaireResponseFr`.
- **Lien avec les consentements** : Les consentements recueillis sont référencés via l’extension `PreadmissionConsentementsExtension`.

---

### Ressource FHIR : `Appointment`

La ressource `Appointment` contient les informations nécessaires à la planification d’un rendez-vous. Elle inclut des métadonnées essentielles telles que la date, l’heure, les participants, et les raisons du rendez-vous.

#### Contraintes principales

- **Statut du rendez-vous** : Défini via `Appointment.status` (par exemple, `booked`, `cancelled`).
- **Description** : Permet de préciser la nature du rendez-vous (par exemple, "IRM cérébrale").
- **Participants** : Inclut le patient et les professionnels de santé impliqués.
- **Raisons du rendez-vous** : Spécifiées via `Appointment.reasonCode`.

---

### Exemple d’utilisation

Voici un exemple minimal de ressource `Appointment` pour un rendez-vous d’IRM cérébrale :

```json
{
  "resourceType": "Appointment",
  "id": "appt-irm-001",
  "status": "booked",
  "description": "IRM cérébrale - préadmission",
  "start": "2025-05-15T10:30:00+01:00",
  "end": "2025-05-15T11:00:00+01:00",
  "participant": [
    {
      "actor": {
        "reference": "Patient/patient-001"
      },
      "status": "accepted"
    },
    {
      "actor": {
        "reference": "Practitioner/practitioner-irm"
      },
      "status": "accepted"
    }
  ],
  "reasonCode": [
    {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "241541005",
          "display": "IRM cérébrale (procédure)"
        }
      ]
    }
  ],
  "extension": [
    {
      "url": "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/appointment-questionnaire-response",
      "valueReference": {
        "reference": "QuestionnaireResponse/qr-irm-001"
      }
    },
    {
      "url": "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-consent-fr",
      "valueReference": {
        "reference": "Consent/consent-dmp-001"
      }
    }
  ]
}
```

### Liens avec les autres ressources

- **Lien avec le patient** : Chaque rendez-vous est directement lié à une ressource `Patient` via `participant.actor`.
- **Lien avec les questionnaires** : Les questionnaires remplis par le patient sont référencés via l’extension `PreadmissionAppointmentQuestionnaireResponseFr`.
- **Lien avec les consentements** : Les consentements recueillis sont référencés via l’extension `PreadmissionConsentementsExtension`.

### Bonnes pratiques

- **Planification précise** : Assurez-vous que les dates et heures des rendez-vous sont correctement définies pour éviter les conflits.
- **Traçabilité des consentements** : Associez systématiquement les consentements recueillis au rendez-vous pour garantir une traçabilité complète.
- **Validation des questionnaires** : Vérifiez que les questionnaires médicaux sont remplis avant la date du rendez-vous.

### Conclusion

La ressource `Appointment`, enrichie d’extensions spécifiques, joue un rôle clé dans la gestion des rendez-vous liés à la préadmission hospitalière. Elle garantit une organisation structurée et conforme des informations, tout en facilitant leur traitement par les systèmes administratifs et médicaux.
