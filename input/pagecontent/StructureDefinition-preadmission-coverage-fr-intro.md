### Introduction

La couverture sociale est un élément clé du processus de préadmission hospitalière. Elle permet de garantir que les frais médicaux du patient seront pris en charge, soit par l'Assurance Maladie Obligatoire (AMO), soit par une Assurance Maladie Complémentaire (AMC). Dans le cadre de la préadmission, ces informations sont collectées et structurées à l'aide de la ressource FHIR `Coverage`, enrichie d'extensions spécifiques pour répondre aux besoins administratifs et réglementaires.

---

### Pourquoi renseigner la couverture sociale ?

La couverture sociale joue un rôle central dans la gestion administrative d'un séjour hospitalier. Elle permet :

- **D'assurer la prise en charge financière** : Les informations sur l'AMO et l'AMC permettent à l'hôpital de facturer correctement les soins.
- **De vérifier les droits du patient** : Les données collectées garantissent que le patient est bien couvert pour les prestations médicales prévues.
- **De simplifier les échanges administratifs** : En structurant les informations selon les standards FHIR, les systèmes hospitaliers peuvent traiter efficacement les données.

---

### Ressource FHIR : `Coverage`

La ressource `Coverage` est utilisée pour modéliser les informations relatives à la couverture sociale d'un patient. Elle inclut des champs essentiels tels que :

- **Le type de couverture** : AMO (Assurance Maladie Obligatoire) ou AMC (Assurance Maladie Complémentaire).
- **Le bénéficiaire** : Le patient couvert par cette assurance.
- **L'assuré principal** : La personne à laquelle la couverture est rattachée (si différente du bénéficiaire).
- **La période de validité** : Les dates de début et de fin de la couverture.
- **Le lien entre l'assuré et le bénéficiaire** : Par exemple, parent, conjoint ou enfant.

#### Extensions spécifiques

Pour répondre aux besoins spécifiques de la préadmission, des extensions enrichissent la ressource `Coverage` :

- **`FrCoverageAMCExtension`** : Permet de détailler les informations spécifiques à une AMC, comme le nom de l'organisme complémentaire, le numéro d'adhérent, ou encore un code de convention.

---

### Comment renseigner une AMO ?

Pour une Assurance Maladie Obligatoire (AMO), les informations suivantes doivent être renseignées dans la ressource `Coverage` :

1. **Type de couverture** : Utilisez le code `PUBLICPOL` pour indiquer qu'il s'agit d'une AMO.
2. **Bénéficiaire** : Référencez le patient concerné via le champ `beneficiary`.
3. **Assuré principal** : Si l'assuré principal est différent du bénéficiaire, renseignez le champ `subscriber` avec une référence vers la ressource `Patient` correspondante.
4. **Numéro de sécurité sociale** : Renseignez le champ `subscriberId` avec le numéro de Sécurité Sociale de l'assuré principal.
5. **Lien entre l'assuré et le bénéficiaire** : Si nécessaire, utilisez le champ `relationship` pour indiquer le lien (ex. parent, conjoint).

---

### Comment renseigner une AMC ?

Pour une Assurance Maladie Complémentaire (AMC), les informations suivantes doivent être renseignées :

1. **Type de couverture** : Utilisez le code `EHCPOL` pour indiquer qu'il s'agit d'une AMC.
2. **Bénéficiaire** : Référencez le patient concerné via le champ `beneficiary`.
3. **Assuré principal** : Si l'assuré principal est différent du bénéficiaire, renseignez le champ `subscriber` avec une référence vers la ressource `Patient` correspondante.
4. **Numéro d'adhérent** : Renseignez le champ `subscriberId` avec le numéro d'adhérent fourni par l'organisme complémentaire.
5. **Détails spécifiques à l'AMC** : Utilisez l'extension `FrCoverageAMCExtension` pour ajouter des informations comme :

   - Le nom de l'organisme complémentaire (`nomAMC`).
   - Le numéro de l'AMC (`numeroAMC`).
   - Un code de convention ou un code CSR, si applicable.
   - Il est possible aussi de transmettre le contenu du Datamatrix

---

### Exemple d'échange de couverture sociale

Lors de la préadmission, le patient fournit ses informations de couverture sociale via un portail en ligne. Ces données sont ensuite transmises au système administratif de l'hôpital pour vérification. Voici un exemple de flux :

1. **Saisie par le patient** : Le patient renseigne ses informations d'AMO et/ou d'AMC sur le portail de préadmission.
2. **Transmission au système administratif hospitalier** : Les données sont envoyées sous forme de ressource `Coverage`, enrichie des extensions nécessaires.
3. **Vérification par l'agent administratif** : L'agent vérifie la validité des informations (dates, numéros, etc.) et fait appel aux différents téléservices.
4. **Validation ou correction** : Si tout est conforme, la couverture est validée. Sinon, une notification est envoyée au patient pour correction.

---

### Critère de recherche autorisé

Dans le contexte de la préadmission, la ressource `Coverage` ne peut être recherchée qu'à partir du **patient**. Cela signifie que les systèmes doivent utiliser uniquement le critère `patient` pour interroger les informations de couverture, conformément aux contraintes d'implémentation définies.

```plaintext
coverage?patient=
```

### Conclusion

La gestion de la couverture sociale dans la préadmission est essentielle pour garantir une prise en charge fluide et efficace des patients. En utilisant la ressource FHIR `Coverage` et ses extensions spécifiques, les établissements de santé peuvent structurer et automatiser ce processus tout en respectant les exigences réglementaires. Que ce soit pour une AMO ou une AMC, chaque détail compte pour assurer une expérience patient optimale et une gestion administrative sans faille.
