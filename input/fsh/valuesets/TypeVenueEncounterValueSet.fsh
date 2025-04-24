ValueSet: TypeVenueEncounterValueSet
Id: type-venue-encounter-vs
Title: "ValueSet des classes d'Encounter pour la préadmission"
Description: "Restreint les classes d'Encounter aux valeurs NONAC, SS et VR"

* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode
  where code = "NONAC" and code = "SS" and code = "VR"


