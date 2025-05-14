### Consentements dans le cadre de la préadmission hospitalière

Les consentements relatifs à la préadmission hospitalière peuvent être exprimés par une ou plusieurs **ressources `Consent`**, chacune pouvant couvrir plusieurs aspects comme la consultation du DMP, l’alimentation du DMP, l'acceptation du RGPD, et le partage d'informations personnelles avec un autre logiciel (par exemple, un portail de préadmission).

#### Structure de la ressource `Consent`

Chaque consentement est structuré par des **provisions**. Une **provision** définit l'action et le consentement du patient (acceptation ou refus). Chaque provision comporte un **code** et un **but** spécifiant l’objectif de l’action (ex. consultation, alimentation du DMP, RGPD, etc.). Une ressource `Consent` peut contenir plusieurs provisions, chaque provision étant liée à un consentement spécifique.

Il est également possible de transmettre chaque consentement dans une ressource `Consent` séparée, notamment lorsque le patient est interrogé sur chaque aspect de son consentement de manière distincte. Dans ce cas, la ressource `Consent` contiendra une seule **provision** par consentement (par exemple, une ressource `Consent` pour le consentement à la consultation du DMP, une autre pour l'alimentation du DMP, etc.).

Lorsque chaque consentement est envoyé dans une ressource séparée, le champ **`provision`** dans chaque ressource `Consent` doit être utilisé pour décrire un seul aspect du consentement du patient.

#### Définition des champs `scope` et `category`

Les champs **`scope`** et **`category`** sont utilisés pour spécifier les détails supplémentaires relatifs au consentement du patient. Ces champs permettent de classifier et d'identifier plus précisément le type de consentement.

- **`scope`** : Ce champ précise l'étendue du consentement. Par exemple, pour un consentement lié à la confidentialité du patient, le système de codage utilisé est le suivant :
  - **scope.coding.system** : `http://terminology.hl7.org/CodeSystem/consentscope`
  - **scope.coding.code** : `#patient-privacy`
  
  Cela indique que le consentement concerne des aspects liés à la confidentialité des informations personnelles du patient.

- **`category`** : Ce champ définit la catégorie du consentement, permettant de spécifier le type de document ou de contenu auquel le consentement est associé. Par exemple, pour un consentement qui concerne un document lié à des données de santé, le système de codage est le suivant :
  - **category.coding.system** : `http://loinc.org`
  - **category.coding.code** : `#59284-0`
  
  Cela spécifie que le consentement est lié à un type de document de santé, tel que des informations ou des rapports médicaux.

Ces champs sont cruciaux pour la classification et l'organisation des consentements dans le cadre de l’interopérabilité des systèmes de santé, permettant ainsi d’identifier clairement les intentions et les types d'informations couvertes par chaque consentement.

#### Types de consentements et leurs champs

##### **Consentement pour la consultation du DMP**
   - **Objectif** : Permet au patient de donner ou non son consentement pour la consultation de son DMP.
   - **Provisions** :
     - **Code** : `INFORMATION` (indique la consultation du DMP).
     - **Purpose** : `TREAT` (consultation du DMP).
     - **Provisons acceptation/refus** :
       - Si le consentement est donné, utiliser `permit`.
       - Si le consentement est refusé, utiliser `deny`.
     - **Cas d'absence de consentement explicite** : Si aucune position explicite n’a été recueillie (ni acceptation ni refus), une **provision** de type `permit` est utilisée sans opposer de refus explicite (voir chapitre dédié).
     
##### **Consentement pour l'alimentation du DMP**
   - **Objectif** : Permet au patient de consentir ou de refuser l’alimentation de son DMP.
   - **Provisions** :
     - **Code** : `INFORMATION` (indique l’alimentation du DMP).
     - **Purpose** : `CAREMGT` (gestion des soins).
     - **Provisions acceptation/refus** :
       - Si le consentement est donné, utiliser `permit`.
       - Si le consentement est refusé, utiliser `deny`.
     - **Cas d'absence de consentement explicite** : Si aucune position explicite n’a été recueillie, une **provision** de type `permit` est utilisée sans refus explicite (voir chapitre dédié).

##### **Consentement au RGPD**
   - **Objectif** : Permet au patient d’accepter ou de refuser le traitement de ses données personnelles dans le cadre du RGPD.
   - **Provisions** :
     - **Code** : `INFAUTHR` (indique l’autorisation de traitement des données dans le cadre du RGPD).
     - **Purpose** : `INFORMATION` (traitement des informations personnelles).
     - **Provisions acceptation/refus** :
       - Si le consentement est donné, utiliser `permit`.
       - Si le consentement est refusé, utiliser `deny`.

##### **Consentement pour le partage des informations personnelles avec un autre logiciel**
   - **Objectif** : Permet au patient de consentir ou de refuser le partage de ses informations personnelles (par exemple, adresse e-mail, numéro de téléphone) avec un autre logiciel.
   - **Provisions** :
     - **Code** : `DISCL` (indique le partage des informations personnelles).
     - **Purpose** : `INFORMATION` (partage d’informations avec un autre logiciel).
     - **Provisions acceptation/refus** :
       - Si le consentement est donné, utiliser `permit`.
       - Si le consentement est refusé, utiliser `deny`.

#### Cas particulier : consentements DMP non recueillis

Dans certaines situations, le consentement pour la **consultation** ou l'**alimentation** du DMP peut ne pas avoir été explicitement recueilli (ni accepté, ni refusé). Il est important de traiter cette situation de manière transparente et conforme :

- **Approche recommandée** :
  - Créer une ressource `Consent`, même si le consentement explicite n’a pas été recueilli.
  - Utiliser **`provision.type = permit`**, ce qui signifie qu'aucun refus n’a été exprimé par le patient.
  - Utiliser une provision fille avec les codes et le but dans **`provision.code`** et **`provision.purpose`** sans renseigner le type (**deny**/**permit**) afin de préciser qu'il n'y a pas eu de refus explicite.
  - Il est possible d'ajouter une note dans **`Consent.note`** pour indiquer :  
    > "Consentement non recueilli : le patient n’a pas exprimé de position explicite lors de la préadmission."

Cette approche garantit une traçabilité claire et conforme, distinguant un refus explicite d’une absence de réponse. Elle assure également que les consentements peuvent être correctement suivis même en l’absence d’une décision explicite du patient.

#### Résumé des champs à renseigner pour chaque consentement

| **Consentement**                          | **Code**         | **Purpose**     | **Type de provision** | **Exemple de note** |
|-------------------------------------------|------------------|-----------------|-----------------------|---------------------|
| Consultation DMP                          | INFORMATION      | TREAT           | `permit` ou `deny`    | "Consentement non recueilli : le patient n’a pas exprimé de position explicite." |
| Alimentation DMP                          | INFORMATION      | CAREMGT         | `permit` ou `deny`    | "Consentement non recueilli : le patient n’a pas exprimé de position explicite." |
| RGPD                                      | INFAUTHR         | INFORMATION     | `permit` ou `deny`    | "Consentement non recueilli : le patient n’a pas exprimé de position explicite." |
| Partage des informations personnelles     | DISCL            | INFORMATION     | `permit` ou `deny`    | "Consentement non recueilli : le patient n’a pas exprimé de position explicite." |
