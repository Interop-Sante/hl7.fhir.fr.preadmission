### Objectif

Dans le cadre de la préadmission hospitalière, le patient est invité à fournir certains **documents administratifs** nécessaires à la validation de son dossier. Ces documents permettent à l’établissement de santé de vérifier l’identité, la couverture sociale du patient avant son admission.

Les documents sont modélisés dans FHIR à l’aide de la ressource `DocumentReference`, enrichie d’extensions spécifiques pour répondre aux besoins du processus de préadmission.

---

### Documents typiques à fournir

Ces documents sont modélisés dans FHIR à l’aide de la ressource `DocumentReference`, avec le type de document contraint par le `ValueSet` [`PreadmissionValueSetDocumentTypeFr`](preadmission-document-type-valueset.html).

---

### Ressource FHIR : `DocumentReference`

La ressource `DocumentReference` est utilisée pour représenter chaque document transmis par le patient. Elle contient des métadonnées essentielles telles que le type de document, la date de création, et un lien vers le fichier téléversé.

#### **Contraintes principales**

- **Type de document** : Obligatoire, défini via l’extension `PreadmissionTypeDocumentFr`.
- **Lien avec la préadmission** : Chaque document doit être associé à un `Encounter` via `DocumentReference.context.encounter`.

---

### Critère de recherche autorisé

Dans le contexte de la préadmission, la ressource `DocumentReference` ne peut être recherchée qu'à partir de l**encounter**. Cela signifie que les systèmes doivent utiliser uniquement le critère `encounter` pour récupérer les documents liés à la pré-admission, conformément aux contraintes d'implémentation définies.

```plaintext
documentreference?encounter=
```

### Bonnes pratiques

- **Validation des documents** : Chaque document téléversé doit être vérifié par un agent administratif pour s’assurer de sa conformité (lisibilité, validité, etc.).
- **Traçabilité** : Les documents doivent être horodatés et associés à un Encounter pour garantir une traçabilité complète.
- **Respect des réglementations** : Les documents doivent être stockés conformément aux exigences légales (RGPD, hébergement HDS, etc.).
- **Gestion des erreurs** : En cas de document manquant ou non conforme, une notification doit être envoyée au patient pour lui permettre de corriger ou compléter son dossier.

### Conclusion

La ressource `DocumentReference` joue un rôle clé dans la gestion des pièces justificatives pour la préadmission hospitalière. Elle garantit une organisation structurée et conforme des documents, tout en facilitant leur traitement par les agents administratifs.
