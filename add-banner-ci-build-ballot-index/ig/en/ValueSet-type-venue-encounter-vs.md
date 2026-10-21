# type-venue-encounter-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: type-venue-encounter-vs (Experimental) 

 **References** 

* [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "type-venue-encounter-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/type-venue-encounter-vs",
  "version" : "1.0.0-ballot",
  "name" : "TypeVenueEncounterValueSet",
  "title" : "type-venue-encounter-vs",
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
  "description" : "Les différents types d'admission (hospitalisation, consultation, etc.)",
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
        "code" : "VR",
        "display" : "Teleconsultation"
      },
      {
        "code" : "AMB",
        "display" : "Consultation externe"
      },
      {
        "code" : "IMP",
        "display" : "Hospitalisation"
      }]
    }]
  }
}

```
