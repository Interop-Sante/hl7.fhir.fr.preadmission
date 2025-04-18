Extension: EncounterConsentExtension
Id: encounter-consent
Title: "Consentement - Opposition DMP"
Description: "Consentement décrivant les oppositions du patient à l’accès à son DMP (bris de glace, centre de régulation, date de recueil)."
* ^context.type = #element
* ^context.expression = "Encounter"
* extension contains PatientDMPAccessOppositionFr named dmpOpposition 1..1