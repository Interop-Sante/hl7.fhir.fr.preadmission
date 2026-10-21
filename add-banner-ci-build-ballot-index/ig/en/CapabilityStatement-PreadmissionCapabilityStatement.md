# Capacités serveur FHIR pour l'IG Preadmission - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## CapabilityStatement: Capacités serveur FHIR pour l'IG Preadmission 

 [Raw OpenAPI-Swagger Definition file](../PreadmissionCapabilityStatement.openapi.json) | [Download](../PreadmissionCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "PreadmissionCapabilityStatement",
  "url" : "https://hl7.fr/ig/fhir/preadmission/CapabilityStatement/PreadmissionCapabilityStatement",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionCapabilityStatement",
  "title" : "Capacités serveur FHIR pour l'IG Preadmission",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-05-22",
  "publisher" : "Interop'Santé",
  "contact" : [{
    "name" : "Interop'Santé",
    "telecom" : [{
      "system" : "url",
      "value" : "http://interopsante.org/"
    }]
  },
  {
    "name" : "InteropSanté",
    "telecom" : [{
      "system" : "email",
      "value" : "fhir@interopsante.org",
      "use" : "work"
    }]
  }],
  "description" : "Décrit les capacités d’un serveur FHIR conforme à l’IG de préadmission hospitalière en France.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "kind" : "capability",
  "software" : {
    "name" : "Serveur FHIR Preadmission",
    "version" : "1.0.0"
  },
  "fhirVersion" : "4.0.1",
  "format" : ["json"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "type" : "Encounter",
      "profile" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-encounter-fr",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }],
      "searchParam" : [{
        "name" : "preadmission-status",
        "definition" : "https://hl7.fr/ig/fhir/preadmission/SearchParameter/encounter-preadmission-status",
        "type" : "token",
        "documentation" : "Le serveur DOIT permettre la recherche des préadmission par son statut (extension PreadmissionStatutFr)."
      },
      {
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche par patient associé"
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Le serveur DOIT permettre la recherche par date de l'Encounter"
      },
      {
        "name" : "appointment",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des préadmissions par rendez-vous"
      },
      {
        "name" : "_lastUpdated",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated",
        "type" : "date",
        "documentation" : "Le serveur DOIT permettre la recherche par date de dernière mise à jour de l'Encounter"
      }]
    },
    {
      "type" : "Appointment",
      "profile" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-appointment-fr",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-patient",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des rendez-vous par patient"
      },
      {
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-date",
        "type" : "date",
        "documentation" : "Le serveur DOIT permettre la recherche des rendez-vous par date"
      }]
    },
    {
      "type" : "Consent",
      "profile" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-consent-fr",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des consentements par patient"
      }]
    },
    {
      "type" : "Coverage",
      "profile" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-coverage-fr",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/Coverage-patient",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche de la couverture par patient"
      }]
    },
    {
      "type" : "DocumentReference",
      "profile" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-documentreference-fr",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "encounter",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des documents par encounter (context.encounter)"
      },
      {
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des documents par patient"
      }]
    },
    {
      "type" : "Patient",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }]
    },
    {
      "type" : "QuestionnaireResponse",
      "profile" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-questionnaireresponse-fr",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "subject",
        "definition" : "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-subject",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des réponses par subject (Appointment ou Encounter)"
      },
      {
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-patient",
        "type" : "reference",
        "documentation" : "Le serveur DOIT permettre la recherche des réponses par patient"
      }]
    }]
  }]
}

```
