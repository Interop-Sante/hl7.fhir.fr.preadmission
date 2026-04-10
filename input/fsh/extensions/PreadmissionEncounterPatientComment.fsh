Extension: EncounterPatientComment
Id: encounter-patient-comment
Title: "Remarque du patient"
Description: "Remarque libre saisie par le patient à destination de l’agent administratif"
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only string
* valueString 1..1