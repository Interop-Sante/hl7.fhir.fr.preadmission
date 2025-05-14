Instance: consentement-multi
InstanceOf: PreadmissionConsentFr
Title: "Consentement global incluant consultation DMP, RGPD, et partage d'information"
* dateTime = "2025-05-14T08:30:00+00:00"
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy

* category.coding.system = "http://loinc.org"
* category.coding.code = #59284-0
* patient = Reference(patient-001) "Jean Dupont"
* status = #active


* provision.type = #deny

// ❌ Refus consultation DMP
* provision.provision[0].type = #deny
* provision.provision[0].code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* provision.provision[0].code[0].coding[0].code = #INFORMATION
* provision.provision[0].purpose[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[0].purpose[0].code = #TREAT

// ❌ Refus alimentation DMP
* provision.provision[1].type = #deny
* provision.provision[1].code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* provision.provision[1].code[0].coding[0].code = #INFORMATION
* provision.provision[1].purpose[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[1].purpose[0].code = #CAREMGT

// ✅ Acceptation RGPD
* provision.provision[2].type = #permit
* provision.provision[2].code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* provision.provision[2].code[0].coding[0].code = #INFAUTHR
* provision.provision[2].purpose[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[2].purpose[0].code = #INFORMATION

// ✅ Acceptation partage interlogiciels
* provision.provision[3].type = #permit
* provision.provision[3].code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* provision.provision[3].code[0].coding[0].code = #DISCL
* provision.provision[3].purpose[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[3].purpose[0].code = #INFORMATION