# preadmission-consent-code-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: preadmission-consent-code-vs (Expérimental) 

 **References** 

* [Fr Preadmission Consent Profile](StructureDefinition-preadmission-consent-fr.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "preadmission-consent-code-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-consent-code-vs",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionConsentCodeValueSet",
  "title" : "preadmission-consent-code-vs",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-21T12:34:52+00:00",
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
  "description" : "Code HL7 représentant les types d'action concernées par le consentement. Tous les codes sont standards et existants.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentaction",
      "version" : "1.0.1",
      "concept" : [{
        "code" : "collect",
        "display" : "Collect data"
      },
      {
        "code" : "access",
        "display" : "Access data"
      },
      {
        "code" : "disclose",
        "display" : "Disclose data"
      }]
    }]
  }
}

```
