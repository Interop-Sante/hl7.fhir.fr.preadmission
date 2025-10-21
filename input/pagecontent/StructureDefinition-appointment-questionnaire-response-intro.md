### Objectif

Lors de la prise de rendez-vous ou au cours du processus de préadmission, le patient doit répondre à un **questionnaire médical** qui permet d’anticiper d’éventuels risques, besoins spécifiques ou restrictions médicales.

Ces informations sont collectées à l’aide des ressources FHIR `Questionnaire` et `QuestionnaireResponse`.

### Scénarios d’utilisation

- Le patient remplit ce questionnaire directement lors de la prise de rendez-vous (en ligne ou avec l’aide de la secrétaire médicale).
- Les réponses sont associées à la ressource `Appointment` ou à la `Encounter` de préadmission.
- Elles sont transmises au SIH pour être évaluées par le personnel soignant.

### Ressource FHIR : `Questionnaire`

Le `Questionnaire` contient une série de questions fermées (oui/non) ou à choix multiples.  
Exemple de questions courantes :

| Code Question            | Texte                                                   | Type     |
|--------------------------|----------------------------------------------------------|----------|
| `pregnant`               | Êtes-vous enceinte ?                                     | boolean  |
| `pacemaker`              | Avez-vous un pacemaker ou un implant cardiaque ?        | boolean  |
| `metal_objects`          | Portez-vous des objets métalliques permanents (broches) ?| boolean |
| `allergies`              | Souffrez-vous d’allergies connues ?                      | boolean  |
| `allergies_details`      | Si oui, lesquelles ?                                     | string   |

### Ressource FHIR : QuestionnaireResponse

Cette ressource contient les réponses spécifiques du patient à un questionnaire donné. Elle est liée à une ressource `Patient`, `Encounter`, ou `Appointment`.

### Récupération des QuestionnaireResponse

#### Lien à un Encounter (séjour)

Le lien entre un QuestionnaireResponse et un séjour hospitalier se fait via le champ standard `QuestionnaireResponse.encounter`. Pour récupérer toutes les réponses liées à un séjour donné, il suffit de filtrer sur ce champ dans la requête FHIR.

#### Lien à un Appointment (rendez-vous)

Par défaut, FHIR ne prévoit pas de champ natif pour relier un `QuestionnaireResponse` à un rendez-vous. Afin de couvrir ce besoin, une extension personnalisée a été ajoutée à la ressource `Appointment` pour permettre l'association avec les réponses aux questionnaires.

### Bonnes pratiques

Associer le questionnaire au Appointment (prise de RDV) ou à l’Encounter (préadmission).

- Utiliser les éléments enableWhen pour conditionner les réponses.
- Archiver les réponses avec la préadmission pour réutilisation le jour de l’admission.

Les questionnaires sont un outil essentiel pour garantir la sécurité du patient et anticiper toute contrainte clinique dès la préadmission.
