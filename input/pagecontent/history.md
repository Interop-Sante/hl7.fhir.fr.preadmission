# Historique des Versions

Ce document retrace les différentes versions du guide d'implémentation FHIR pour la préadmission hospitalière, en mettant en évidence les changements majeurs, les corrections et les ajouts.

---

## Version 0.1.0 (Draft)
**Date de publication :** 25 avril 2025  
**Statut :** En cours de développement  

### Changements principaux :
- Création initiale du guide d'implémentation.
- Ajout des profils FHIR suivants :
  - `PreadmissionAppointmentFr` : Gestion des rendez-vous.
  - `PreadmissionEncounterFr` : Pré-admission administrative.
  - `PreadmissionCoverageFr` : Gestion de la couverture sociale (AMO/AMC).
  - `PreadmissionDocumentReferenceFr` : Transmission des documents justificatifs.
  - `PreadmissionConsentFr` : Recueil des consentements.
- Définition des extensions spécifiques :
  - `PreadmissionStatutFr` : Suivi du statut de la préadmission.
  - `FrCoverageAMCExtension` : Informations spécifiques à l'AMC.
  - `EncounterPatientComment` : Remarques du patient.
  - `EncounterAgentInstructions` : Consignes de l’agent administratif.
- Documentation des flux d’échange et des processus de préadmission :
  - Diagrammes des flux.
  - Séquence des opérations.
- Ajout d'exemples d'utilisation pour les ressources FHIR (`Appointment`, `Encounter`, `Coverage`, etc.).

---

## Version 0.2.0 (Prévue)
**Date de publication :** À définir  
**Statut :** En cours de planification  

### Changements prévus :
- Ajout de nouveaux cas d'utilisation pour les téléconsultations.
- Amélioration des contraintes sur les profils existants.
- Documentation des bonnes pratiques pour la gestion des consentements et des documents justificatifs.
- Ajout d'exemples supplémentaires pour les cas complexes (ex. : patient mineur, couverture multiple).

---

## Notes
- Les versions futures incluront des mises à jour basées sur les retours des utilisateurs et les évolutions des standards FHIR.
- Toute contribution ou suggestion est la bienvenue. Contactez-nous à [fhir@interopsante.org](mailto:fhir@interopsante.org).

---