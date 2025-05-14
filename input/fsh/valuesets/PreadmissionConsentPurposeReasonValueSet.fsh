ValueSet: PreadmissionConsentPurposeReasonVS
Id: preadmission-consent-purpose-reason-vs
Title: "Finalités du traitement dans le cadre des consentements"
Description: "Raisons justifiant l’utilisation des données personnelles (HL7 v3 ActReason)."
* ^experimental = true

* include http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT // Traitement (consultation et alimentation DMP)
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#CAREMGT // Gestion de parcours (transport du consentement)
* include http://terminology.hl7.org/CodeSystem/v3-ActReason#INFORMATION // Envoi de données personnelles vers un autre logiciel