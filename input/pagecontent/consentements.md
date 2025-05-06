### Introduction

Dans le cadre de la préadmission hospitalière, plusieurs consentements doivent être recueillis auprès du patient pour se conformer aux exigences réglementaires et garantir une gestion transparente et sécurisée des données personnelles et médicales. Ces consentements couvrent des aspects variés, tels que le traitement des données personnelles (RGPD), l’accès au Dossier Médical Partagé (DMP), ou encore la transmission de données à des tiers.  

Ces consentements sont modélisés dans FHIR à l’aide de la ressource `Consent`, enrichie de contraintes spécifiques et d’extensions adaptées au contexte de la préadmission.

---

### Types de consentements recueillis

#### **1. Consentement au traitement des données personnelles (RGPD)**

Ce consentement est obligatoire et permet de recueillir l’accord du patient pour le traitement de ses données personnelles dans le cadre de la préadmission. Il garantit la conformité avec les exigences du RGPD.

- **Catégorie** : `other` (traitement des données personnelles)
- **Statut** : Actif ou refusé
- **Règle applicable** : RGPD
- **Ressource FHIR**

  - `Consent.category = "other"`
  - `Consent.policyRule = "RGPD"`

---

#### **2. Consentement à l’accès et à l’alimentation du DMP**

| **Type de consentement**       | **Description**                                                                 | **Statuts possibles**               |
|--------------------------------|---------------------------------------------------------------------------------|-------------------------------------|
| Accès au DMP                   | Permet la consultation des données du DMP.                                      | Informé et consent / Informé et ne consent pas / Information non recueillie |
| Alimentation du DMP            | Autorise l’ajout de documents dans le DMP.                                      | Informé et consent / Informé et ne consent pas / Information non recueillie |
| Date de recueil                | Date à laquelle le consentement a été recueilli.                                | Date                                 |

Ce consentement permet à l’établissement de santé d’accéder au Dossier Médical Partagé (DMP) du patient et d’y inscrire des documents relatifs à la préadmission. Il est modélisé à l’aide de deux sous-catégories distinctes

- **Accès au DMP** : Permet la consultation des données du DMP.
- **Alimentation du DMP** : Autorise l’ajout de documents dans le DMP.

- **Catégories** : `consultationDmp` et `alimentationDmp`
- **Statuts possibles**

  - `Informé et consent` (autorisé)
  - `Informé et ne consent pas` (refusé)
  - `Information non recueillie`
- **Ressource FHIR**

  - `Consent.category = "consultationDmp"` ou `Consent.category = "alimentationDmp"`
  - `Consent.policyRule = "FR-DMP-ACCESS"`

##### Valeurs autorisées

| **Code**     | **Libellé**                                      |
|--------------|--------------------------------------------------|
| IC           | Informé et non opposé (consentement éclairé)     |
| INC          | Informé et opposé (refusé)                       |
| NA           | Information non recueillie (non demandé)         |

---

#### **3. Consentement à la transmission à une plateforme de préadmission**

Ce consentement permet de transmettre certaines données administratives et médicales du patient à un tiers hébergeur de solution numérique de préadmission. Il est facultatif et dépend de l’utilisation d’un portail externe.

- **Catégorie** : `portal-transfer`
- **Statut** : Actif ou refusé
- **Ressource FHIR**
  - `Consent.category = "portal-transfer"`
  - `Consent.policyRule = "PLATFORM-TRANSFER"`

---

### Ressource FHIR : `Consent`

La ressource `Consent` est utilisée pour modéliser chaque consentement recueilli auprès du patient. Elle contient des métadonnées essentielles telles que le type de consentement, le statut, et les règles applicables.  

#### **Contraintes principales**

- **Statut du consentement** : Obligatoire, avec des valeurs possibles comme `active`, `inactive`, ou `rejected`.
- **Catégorie** : Définit le type de consentement (RGPD, DMP, transmission à tiers).
- **Lien avec le patient** : Chaque consentement doit référencer une ressource `Patient` via `Consent.patient`.
- **Règle applicable** : Spécifiée via `Consent.policyRule` pour indiquer le cadre réglementaire (par exemple, RGPD ou DMP).

---

### Liens avec les autres ressources

- **Lien avec le patient** : Chaque consentement est directement lié à une ressource `Patient`.
- **Lien avec la préadmission** : Les consentements peuvent être référencés dans la ressource `Encounter` ou `Appointment` associée à la préadmission.

### Bonnes pratiques

- **Traçabilité** : Tous les consentements doivent être horodatés et archivés pour garantir une traçabilité complète.
- **Mise à jour des statuts** : L’état du consentement (active, rejected, etc.) doit être mis à jour en cas de modification ou de retrait.
- **Conformité réglementaire** : Les consentements doivent respecter les exigences légales, notamment celles du RGPD.
- **Notification au patient** : En cas de modification des règles ou des politiques, le patient doit être informé et son consentement mis à jour si nécessaire.

### Conclusion

La ressource `Consent`, enrichie de contraintes spécifiques, joue un rôle central dans la gestion des autorisations nécessaires au processus de préadmission. Elle garantit une conformité réglementaire tout en facilitant la gestion des données administratives et médicales du patient.
