Instance: consentement-one
InstanceOf: PreadmissionConsentFr
Title: "Consentement unique représentant le non reccueil de la consultation DMP"
* dateTime = "2025-05-14T08:30:00+00:00"
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #patient-privacy

* category.coding.system = "http://loinc.org"
* category.coding.code = #59284-0
* patient = Reference(patient-001) "Jean Dupont"
* status = #active

// Consentement non recueilli pour la consultation DMP
* provision.type = #permit
* provision.provision[0].code[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* provision.provision[0].code[0].coding[0].code = #INFORMATION
* provision.provision[0].purpose[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActReason"
* provision.provision[0].purpose[0].code = #TREAT
