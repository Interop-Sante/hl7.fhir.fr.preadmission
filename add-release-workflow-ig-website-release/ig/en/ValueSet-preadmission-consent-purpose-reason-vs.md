# preadmission-consent-purpose-reason-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: preadmission-consent-purpose-reason-vs (Experimental) 

 **References** 

* [Fr Preadmission Consent Profile](StructureDefinition-preadmission-consent-fr.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "preadmission-consent-purpose-reason-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-consent-purpose-reason-vs",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionConsentPurposeReasonVS",
  "title" : "preadmission-consent-purpose-reason-vs",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-21T07:37:29+00:00",
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
  "description" : "Raisons justifiant l’utilisation des données personnelles (HL7 v3 ActReason).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "version" : "4.0.0",
      "concept" : [{
        "code" : "TREAT",
        "display" : "Treatment"
      },
      {
        "code" : "PATREQ",
        "display" : "Patient Request"
      }]
    }]
  }
}

```
