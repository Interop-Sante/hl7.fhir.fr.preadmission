ValueSet: TypeCouvertureSocialeValueSet
Id: type-couverture-sociale-vs
Title: "ValueSet des types de couverture pour la préadmission"
Description: "Restreint les types de couverture à PUBLICPOL (AMO) et EHCPOL (AMC)"
* ^experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode 
  where code = "PUBLICPOL" and code = "EHCPOL"


