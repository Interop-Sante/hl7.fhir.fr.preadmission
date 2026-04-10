### Introduction

La ressource **QuestionnaireResponse** est utilisée pour représenter les **réponses aux questionnaires** remplis par le patient dans le cadre de la préadmission hospitalière. Ces questionnaires peuvent être collectés à différents moments du processus :

- Lors de la **prise de rendez-vous**, pour recueillir des informations médicales préalables (ex : contre-indications, allergies).
- Lors de la **préadmission administrative**, pour collecter des informations complémentaires (ex : souhait de chambre particulière).

---

### Rôle de la ressource QuestionnaireResponse

La ressource `QuestionnaireResponse` permet de :

- Enregistrer les réponses du patient à des questionnaires structurés.
- Lier les réponses au contexte approprié (rendez-vous, encounter, patient).
- Faciliter le traitement automatisé des réponses par les systèmes hospitaliers.
- Assurer la traçabilité des informations collectées.

---

### Spécificités du profil `PreadmissionQuestionnaireResponseFr`

Le profil **PreadmissionQuestionnaireResponseFr** apporte des contraintes spécifiques pour répondre aux besoins de la préadmission.

#### **Contraintes principales**

- **Statut** : Le statut de la réponse est obligatoire (`status`).
- **Subject** : Le subject doit référencer soit :
  - Un **Appointment** pour les questionnaires de prise de rendez-vous
  - Un **Encounter** pour les questionnaires de préadmission administrative
  - Un **Patient** si aucun contexte spécifique
- **Questionnaire** : La référence au questionnaire est obligatoire.
- **Date de création** : La date à laquelle les réponses ont été fournies est obligatoire (`authored`).

---

### Lien avec les autres ressources

#### Lien avec Appointment

Pour les questionnaires remplis lors de la **prise de rendez-vous**, le `subject` doit pointer vers l'`Appointment` :

```json
{
  "resourceType": "QuestionnaireResponse",
  "subject": {
    "reference": "Appointment/appt-irm-001"
  },
  "questionnaire": "http://hl7.fr/fhir/fr/preadmission/Questionnaire/questionnaire-irm"
}
```

**Recherche des réponses pour un rendez-vous :**
```http
GET /QuestionnaireResponse?subject=Appointment/appt-irm-001
```

#### Lien avec Encounter

Pour les questionnaires remplis lors de la **préadmission**, le `subject` doit pointer vers l'`Encounter` :

```json
{
  "resourceType": "QuestionnaireResponse",
  "subject": {
    "reference": "Encounter/encounter-irm-externe"
  },
  "questionnaire": "http://hl7.fr/fhir/fr/preadmission/Questionnaire/questionnaire-portail"
}
```

**Recherche des réponses pour une préadmission :**
```http
GET /QuestionnaireResponse?subject=Encounter/encounter-irm-externe
```

---

### Bonnes pratiques

- **Contexte approprié** : Toujours lier la réponse au bon contexte (Appointment pour RDV, Encounter pour préadmission).
- **Validation** : Vérifier que toutes les questions obligatoires ont reçu une réponse avant de marquer le statut comme `completed`.
- **Traçabilité** : Renseigner systématiquement le champ `authored` pour tracer le moment de la réponse.
- **Author** : Utiliser le champ `author` pour identifier qui a rempli le questionnaire (généralement le patient).

---

### Conclusion

La ressource `QuestionnaireResponse`, via le profil `PreadmissionQuestionnaireResponseFr`, joue un rôle essentiel dans la collecte structurée d'informations auprès du patient. Elle garantit une organisation cohérente et facilite l'exploitation des données par les systèmes administratifs et médicaux.
