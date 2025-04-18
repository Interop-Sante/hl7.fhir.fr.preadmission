Extension: PatientDMPAccessOppositionFr
Id: patient-dmp-access-opposition-fr
Title: "Opposition à l'accès DMP"
Description: "Permet d’enregistrer les oppositions du patient à l’accès à son DMP selon les règles ZFA (ZFA-6, ZFA-7, ZFA-8)."
* extension contains
    oppositionBrisDeGlace 0..1 and
    oppositionCentreRegulation 0..1 and
    dateRecueilOpposition 0..1

* extension[oppositionBrisDeGlace].value[x] only boolean
* extension[oppositionBrisDeGlace].valueBoolean ^short = "Opposition à l’accès en mode bris de glace (ZFA-6)"

* extension[oppositionCentreRegulation].value[x] only boolean
* extension[oppositionCentreRegulation].valueBoolean ^short = "Opposition à l’accès en mode centre de régulation (ZFA-7)"

* extension[dateRecueilOpposition].value[x] only dateTime
* extension[dateRecueilOpposition].valueDateTime ^short = "Date de recueil de l’opposition (ZFA-8)"
