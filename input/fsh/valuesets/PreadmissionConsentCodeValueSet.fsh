ValueSet: PreadmissionConsentCodeValueSet
Id: preadmission-consent-code-vs
Title: "preadmission-consent-code-vs"
Description: "Code HL7 représentant les types d'action concernées par le consentement. Tous les codes sont standards et existants."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^experimental = true

* http://terminology.hl7.org/CodeSystem/consentaction#collect "Collect data"
* http://terminology.hl7.org/CodeSystem/consentaction#access "Access data"
* http://terminology.hl7.org/CodeSystem/consentaction#disclose "Disclose data"
