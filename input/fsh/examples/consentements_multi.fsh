Instance: consentement-multi
InstanceOf: PreadmissionConsentFr
Title: "Consentement global incluant consultation DMP, alimentation DMP et partage d'information"
Description: "Exemple d'une ressource Consent combinant plusieurs provisions pour la consultation du DMP, l'alimentation du DMP et le partage d'informations avec un logiciel tiers pour des communications par SMS ou e-mail."
Usage: #example
* status = #active
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy
* scope.coding.display = "Patient Privacy"
* category.coding.system = "http://loinc.org"
* category.coding.code = #59284-0
* category.coding.display = "Consent Document"
* patient = Reference(Patient/patient-001) "Jean Dupont"
* dateTime = "2025-05-14T08:30:00+00:00"

// Consultation du DMP (non recueilli, provision.type vide)
* provision.provision[0].code.coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.provision[0].code.coding.code = #access
* provision.provision[0].code.coding.display = "Access data"
* provision.provision[0].purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[0].purpose.code = #TREAT
* provision.provision[0].purpose.display = "Treatment"

// Alimentation du DMP (non recueilli, provision.type vide)
* provision.provision[1].code.coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.provision[1].code.coding.code = #collect
* provision.provision[1].code.coding.display = "Collect data"
* provision.provision[1].purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[1].purpose.code = #TREAT
* provision.provision[1].purpose.display = "Treatment"

// Partage avec un logiciel tiers (acceptation)
* provision.provision[2].type = #permit
* provision.provision[2].code.coding.system = "http://terminology.hl7.org/CodeSystem/consentaction"
* provision.provision[2].code.coding.code = #disclose
* provision.provision[2].code.coding.display = "Disclose data"
* provision.provision[2].purpose.system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[2].purpose.code = #PATREQ
* provision.provision[2].purpose.display = "Patient Request"