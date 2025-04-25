Profile: PreadmissionCoverageFr
Parent: Coverage
Id: preadmission-coverage-fr
Title: "Profil Coverage pour la préadmission FR"
Description: "Profil Coverage pour la gestion des informations liées à la couverture sociale AMO et AMC pour la préadmission hospitalière."

* extension contains FrCoverageAMCExtension named informationsAmc 0..1 MS

* identifier 1..1 MS
* status 1..1 MS
* type 1..1 MS

// Restriction des types de couverture à PUBLICPOL (AMO) et EHCPOL (AMC)
* type.coding 1..1
* type.coding.system = "http://terminology.hl7.org/CodeSystem/coverage-type"
* type.coding.code from TypeCouvertureSocialeValueSet (required)


// Précision pour le statut de la couverture (active)
* status 1..1 MS
* status = #active

// Précision pour la date de début de couverture
* period.start 1..1 MS
* period.start only dateTime

// Précision pour la date de fin de couverture
* period.end 0..1 MS
* period.end only dateTime

// Précisione pour le bénéficiaire de la couverture (patient)
* beneficiary 1..1 MS
* beneficiary only Reference(FRCorePatientProfile)

// Précision pour le champ subscriber
* subscriber 1..1 MS
* subscriber only Reference(FRCorePatientProfile)
* subscriber ^short = "Référence vers l’assuré"
* subscriber ^definition = "Référence vers l’assuré (et son NIR). À renseigner obligatoirement si l’assuré est différent du bénéficiaire."


// Précision pour le champ subscriberId
* subscriberId 1..1
* subscriberId ^short = "Numéro de sécurité sociale ou numéro d'adhérent"
* subscriberId ^definition = "Contient le numéro de sécurité sociale de l'ayant droit pour une AMO ou le numéro d'adhérent pour une AMC"

// Précision pour le champ relationship
* relationship 0..1
* relationship ^short = "Lien entre l’assuré et le bénéficiaire"
* relationship ^definition = "À renseigner obligatoirement si l’assuré est différent du bénéficiaire pour indiquer le lien entre les deux (ex. parent, conjoint, enfant)."
* relationship.coding 1..1
* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/subscriber-relationship"


