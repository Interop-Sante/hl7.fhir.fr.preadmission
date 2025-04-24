Profile: PreadmissionCoverageFr
Parent: Coverage
Id: preadmission-coverage-fr
Title: "Profil Coverage pour la préadmission FR"
Description: "Profil Coverage pour la gestion des informations liées à la couverture sociale AMO et AMC pour la préadmission hospitalière."

* identifier 1..1 MS
* status 1..1 MS
* type 1..1 MS
* subscriber 1..1 MS
* beneficiary 1..1 MS


// Précision pour le statut de la couverture (active)
* status 1..1 MS
* status = #active

// Précision pour la date de début de couverture
* period.start 1..1 MS
* period.start only dateTime

// Précision pour la date de fin de couverture
* period.end 0..1 MS
* period.end only dateTime

// ExtPrécisionension pour le bénéficiaire de la couverture (patient)
* beneficiary 1..1 MS
* beneficiary only Reference(FrCorePatient)
