# type-couverture-sociale-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: type-couverture-sociale-vs (Experimental) 

 **References** 

* [Fr Preadmission Coverage Profile](StructureDefinition-preadmission-coverage-fr.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "type-couverture-sociale-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/type-couverture-sociale-vs",
  "version" : "1.0.0-ballot",
  "name" : "TypeCouvertureSocialeValueSet",
  "title" : "type-couverture-sociale-vs",
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
  "description" : "Restreint les types de couverture à PUBLICPOL (AMO) et EHCPOL (AMC)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "version" : "11.0.0",
      "concept" : [{
        "code" : "PUBLICPOL",
        "display" : "AMO"
      },
      {
        "code" : "EHCPOL",
        "display" : "AMC"
      }]
    }]
  }
}

```
