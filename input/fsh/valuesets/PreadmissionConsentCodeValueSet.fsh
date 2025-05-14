ValueSet: PreadmissionConsentCodeValueSet
Id: preadmission-consent-code-value-set
Title: "Codes des actions de consentement (standard HL7)"
Description: "Code HL7 v3 ActCode représentant les types d'action concernées par le consentement. Tous les codes sont standards et existants."
* ^experimental = true

* include http://terminology.hl7.org/CodeSystem/v3-ActCode#INFAUTHR     // Information authorization transfer
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#DISCL        // Information disclosure
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#INFORMATION  // Access to personal information
