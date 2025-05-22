Profile: PreadmissionConsentFr
Parent: Consent
Id: preadmission-consent-fr
Title: "Fr Preadmission Consent Profile"
Description: "Profil Consent pour les consentements lors de la préadmission"

* patient 1..1
* patient only Reference(FRCorePatientProfile)


* status 1..1
* status = #active (exactly)
* scope 1..1
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category 1..*
* category.coding 1..*
* category.coding from PreadmissionConsentCategoryVS (required)
* patient 1..1
* dateTime 1..1

// provision unique racine
* provision 1..1
* provision.type from ConsentProvisionType (required) // #permit or #deny
* provision.provision 0..*

// Chaque sous-provision doit avoir un type, un code, et une purpose
* provision.provision.type 0..1
* provision.provision.type from ConsentProvisionType (required) // #permit or #deny
* provision.provision.code 1..1
* provision.provision.code from PreadmissionConsentCodeValueSet (required)
* provision.provision.purpose 1..1
* provision.provision.purpose from PreadmissionConsentPurposeReasonVS (required)