Instance: PreadmissionCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* url = "http://hl7.fr/fhir/fr/preadmission/CapabilityStatement/PreadmissionCapabilityStatement"
* name = "PreadmissionCapabilityStatement"
* title = "Capacités serveur FHIR pour l'IG Preadmission"
* status = #active
* experimental = false
* date = "2025-05-22"
* publisher = "InteropSanté"
* description = "Décrit les capacités d’un serveur FHIR conforme à l’IG de préadmission hospitalière en France."
* kind = #instance
* fhirVersion = #4.0.1
* format = #json
* format = #xml

* rest[0].mode = #server

// Déclaration de support pour Encounter
* rest[0].resource[+].type = #Encounter
* rest[0].resource[=].profile = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-encounter-fr"
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type
* rest[0].resource[=].interaction[2].code = #create
* rest[0].resource[=].interaction[3].code = #update
* rest[0].resource[=].interaction[4].code = #delete
* rest[0].resource[=].searchParam[0].name = "preadmission-status"
* rest[0].resource[=].searchParam[0].definition = "http://hl7.fr/fhir/fr/preadmission/SearchParameter/encounter-preadmission-status"
* rest[0].resource[=].searchParam[0].type = #token
* rest[0].resource[=].searchParam[0].documentation = "Le serveur DOIT permettre la recherche des préadmission par son statut (extension PreadmissionStatutFr)."
* rest[0].resource[=].searchParam[+].name = "patient"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-patient"
* rest[0].resource[=].searchParam[=].type = #reference
* rest[0].resource[=].searchParam[=].documentation = "Le serveur DOIT permettre la recherche par patient associé"
* rest[0].resource[=].searchParam[+].name = "date"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Encounter-date"
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Le serveur DOIT permettre la recherche par date de l'Encounter"
* rest[0].resource[=].searchParam[+].name = "_lastUpdated"
* rest[0].resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest[0].resource[=].searchParam[=].type = #date
* rest[0].resource[=].searchParam[=].documentation = "Le serveur DOIT permettre la recherche par date de dernière mise à jour de l'Encounter"

// Appointment
* rest[0].resource[+].type = #Appointment
* rest[0].resource[=].profile = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-appointment-fr"
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type

// Consent
* rest[0].resource[+].type = #Consent
* rest[0].resource[=].profile = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-consent-fr"
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type

// Coverage
* rest[0].resource[+].type = #Coverage
* rest[0].resource[=].profile = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-coverage-fr"
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type
* rest[0].resource[=].searchParam[0].name = "patient"
* rest[0].resource[=].searchParam[0].type = #reference
* rest[0].resource[=].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Coverage-patient"
* rest[0].resource[=].searchParam[0].documentation = "Le serveur DOIT permettre la recherche de la couverture par patient"

// DocumentReference
* rest[0].resource[+].type = #DocumentReference
* rest[0].resource[=].profile = "http://hl7.fr/fhir/fr/preadmission/StructureDefinition/preadmission-documentreference-fr"
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type
* rest[0].resource[=].searchParam[0].name = "encounter"
* rest[0].resource[=].searchParam[0].type = #reference
* rest[0].resource[=].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/DocumentReference-encounter"
* rest[0].resource[=].searchParam[0].documentation = "Le serveur DOIT permettre la recherche des documets par encounter (context.encounter)"

// Patient
* rest[0].resource[+].type = #Patient
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type

// QuestionnaireResponse
* rest[0].resource[+].type = #QuestionnaireResponse
* rest[0].resource[=].interaction[0].code = #read
* rest[0].resource[=].interaction[1].code = #search-type
