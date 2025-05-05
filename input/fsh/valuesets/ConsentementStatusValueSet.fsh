ValueSet: ConsentInformationStatusVS
Id: consent-information-status
Title: "Statut d'information et de consentement"
Description: "Statut du patient concernant l'information et le consentement, incluant les cas d'opposition ou d'absence de recueil."
* ^experimental = true


* include codes from system ValeursConsentementCodeSystem

//* include codes from system http://snomed.info/sct
//* http://snomed.info/sct#311401005 "Refusal of informed consent"
//* http://snomed.info/sct#225773000 "Informed consent"
//* http://snomed.info/sct#261665006 "Not asked"