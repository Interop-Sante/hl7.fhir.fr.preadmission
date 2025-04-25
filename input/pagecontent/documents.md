# Pièces Justificatives dans la Preadmission

## Objectif

Dans le cadre de la préadmission hospitalière, le patient est invité à fournir certains **documents administratifs** nécessaires à la validation de son dossier. Ces documents permettent à l’établissement de santé de vérifier l’identité, la couverture sociale du patient avant son admission.

Les documents sont modélisés dans FHIR à l’aide de la ressource `DocumentReference`, enrichie d’extensions spécifiques pour répondre aux besoins du processus de préadmission.

---

## Documents typiques à fournir

Voici une liste des documents les plus couramment demandés lors de la préadmission, basée sur le `ValueSet` des types de documents autorisés :

- 📄 **Carte nationale d’identité (CNI)** : Document officiel permettant d'attester de l'identité du patient.
- 🟩 **Carte Vitale** : Document permettant de certifier la couverture sociale du patient.
- 🧾 **Carte de mutuelle** : Justificatif de couverture complémentaire.
- 📃 **Justificatif de domicile** : Document attestant du lieu de résidence du patient.
- 📑 **Attestation de droits à la sécurité sociale** : Document émis par l’assurance maladie pour prouver les droits du patient.
- 🧭 **Carte de séjour** : Document permettant de certifier le statut de séjour du patient.
- 📚 **Livret de famille** : Document permettant de certifier la composition de la famille du patient.
- 📝 **Arrêt de travail** : Document médical validant une période d'arrêt de travail du patient.

Ces documents sont modélisés dans FHIR à l’aide de la ressource `DocumentReference`, avec le type de document contraint par le `ValueSet` [`PreadmissionValueSetDocumentTypeFr`](preadmission-document-type-valueset.html).

---

## Ressource FHIR : `DocumentReference`

La ressource `DocumentReference` est utilisée pour représenter chaque document transmis par le patient. Elle contient des métadonnées essentielles telles que le type de document, la date de création, et un lien vers le fichier téléversé.


### **Contraintes principales**
- **Type de document** : Obligatoire, défini via l’extension `PreadmissionTypeDocumentFr`.
- **Lien avec la préadmission** : Chaque document doit être associé à un `Encounter` via `DocumentReference.context.encounter`.

---

## Critères de recherche autorisés

Les critères de recherche suivants sont disponibles pour la ressource `DocumentReference` dans le cadre de la préadmission hospitalière :

- **Lien avec la préadmission** : Permet de rechercher les documents associés à un `Encounter` spécifique.

---

## Exemple d’utilisation

Voici un exemple minimal de ressource `DocumentReference` pour une carte d’identité téléversée par le patient :

```json
{
  "resourceType": "DocumentReference",
  "status": "current",
  "type": {
    "coding": [
      {
        "system": "http://hl7.fr/fhir/fr/preadmission/CodeSystem/document-type-code-system",
        "code": "CNI",
        "display": "Carte d’identité"
      }
    ]
  },
  "subject": {
    "reference": "Patient/1234"
  },
  "context": {
    "encounter": {
      "reference": "Encounter/encounter1234"
    }
  },
  "date": "2025-04-15T10:12:00+02:00",
  "content": [
    {
      "attachment": {
        "contentType": "application/pdf",
        "url": "https://pre-adm.fr/docs/1234/cni.pdf",
        "title": "Carte d’identité",
        "creation": "2025-04-15T10:10:00+02:00"
      }
    }
  ]
}
```
## Bonnes pratiques

- **Validation des documents** : Chaque document téléversé doit être vérifié par un agent administratif pour s’assurer de sa conformité (lisibilité, validité, etc.).
- **Traçabilité** : Les documents doivent être horodatés et associés à un Encounter pour garantir une traçabilité complète.
- **Respect des réglementations** : Les documents doivent être stockés conformément aux exigences légales (RGPD, hébergement HDS, etc.).
- **Gestion des erreurs** : En cas de document manquant ou non conforme, une notification doit être envoyée au patient pour lui permettre de corriger ou compléter son dossier.

## Conclusion
La ressource `DocumentReference` joue un rôle clé dans la gestion des pièces justificatives pour la préadmission hospitalière. Elle garantit une organisation structurée et conforme des documents, tout en facilitant leur traitement par les agents administratifs.