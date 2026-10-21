# preadmission-consent-category-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: preadmission-consent-category-vs (Experimental) 

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
  "id" : "preadmission-consent-category-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-consent-category-vs",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionConsentCategoryVS",
  "title" : "preadmission-consent-category-vs",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-21T10:02:58+00:00",
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
  "description" : "ValueSet pour les catégories de consentement. Tous les codes sont standards et existants.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "59284-0",
        "display" : "Consent Document"
      },
      {
        "code" : "57016-8",
        "display" : "Privacy Policy Acknowledgment Document"
      }]
    }]
  }
}

```
