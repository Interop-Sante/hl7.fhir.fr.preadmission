# Validation de la Preadmission

## Étape finale du processus

Une fois que le patient a complété ses informations et transmis les documents nécessaires, le système administratif de l’hôpital récupère l’ensemble des données et les soumet à un agent du bureau des entrées.

L’agent procède alors à la **vérification de la conformité** de la demande de préadmission.

## Scénarios possibles

### ✅ Validation

Si toutes les informations et documents sont conformes, la préadmission est validée.  
Cette validation est modélisée par une **mise à jour de la ressource `Encounter`** représentant la préadmission :

- `Encounter.status = finished`
- Ajout d’une extension ou d’un `Encounter.statusReason` indiquant : "Preadmission validée"
- Notification envoyée au patient via le portail

---

### ❌ Refus

Si une pièce justificative est absente, illisible, ou si une information est incohérente, l’agent peut **refuser la préadmission**.

- `Encounter.status = cancelled` (ou rester à `in-progress`)
- `Encounter.statusReason` renseigné avec le motif de refus
- Ajout d’un `Annotation` ou `Communication` précisant le commentaire à destination du patient
- Notification envoyée au patient via le portail

---

## Exemple de statut FHIR

```json
{
  "resourceType": "Encounter",
  "id": "enc1234",
  "status": "cancelled",
  "statusReason": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/encounter-cancel-reason",
        "code": "incomplete",
        "display": "Dossier incomplet"
      }
    ]
  },
  "note": [
    {
      "text": "Carte de mutuelle manquante. Merci de la téléverser pour valider votre préadmission.",
      "authorReference": {
        "reference": "PractitionerRole/admin-entry"
      }
    }
  ]
}
```

## Notification au patient
La décision de validation ou de refus est transmise à la plateforme de préadmission, qui se charge de :

notifier le patient via email, SMS ou dans l’interface utilisateur,

l’inviter à corriger ou compléter son dossier si nécessaire.

## Ressources FHIR impliquées

| Ressource     | Rôle                                        |
|---------------|---------------------------------------------|
| `Encounter`   | Support de la préadmission                  |
| `Annotation`  | Commentaire sur la décision                 |
| `Communication` | Transmission des motifs au patient       |
| `Task` (optionnel) | Tâche de vérification ou de relance   |

## Bonnes pratiques
- Documenter systématiquement les refus avec un motif compréhensible par le patient.

- Privilégier les refus partiels avec commentaires plutôt que des rejets globaux.

- Proposer des relances automatisées dans un délai prédéfini.
