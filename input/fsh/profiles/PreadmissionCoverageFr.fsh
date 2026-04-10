Profile: PreadmissionCoverageFr
Parent: Coverage
Id: preadmission-coverage-fr
Title: "Fr Preadmission Coverage Profile"
Description: "Profil Coverage pour les couvertures sociales lors de la préadmission"

* extension contains FrCoverageAMCExtension named informationsAmc 0..1 MS
* extension[informationsAmc] ^short = "Informations AMC"

* identifier 1..1 MS
* status 1..1 MS
* type 1..1 MS

// Restriction des types de couverture à PUBLICPOL (AMO) et EHCPOL (AMC)
* type.coding 1..1
* type.coding.code from TypeCouvertureSocialeValueSet (required)

// Précision pour le statut de la couverture (active)
* status = #active

// Précision pour le bénéficiaire de la couverture (patient)
* beneficiary 1..1 MS
* beneficiary only Reference(FRCorePatientProfile)

// Précision pour le champ subscriber
* subscriber 1..1 MS
* subscriber only Reference(FRCorePatientProfile or RelatedPerson)
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

