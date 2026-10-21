# preadmission-document-type-vs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## ValueSet: preadmission-document-type-vs (Experimental) 

 **References** 

* [Fr Preadmission DocumentReference Profile](StructureDefinition-preadmission-documentreference-fr.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "preadmission-document-type-vs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/ValueSet/preadmission-document-type-vs",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionDocumentTypeFrValueSet",
  "title" : "preadmission-document-type-vs",
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
  "description" : "Liste des types de documents autorisés pour la préadmission",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-mode-validation-identity",
      "version" : "2.2.0"
    },
    {
      "system" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/document-type-cs",
      "version" : "1.0.0-ballot"
    },
    {
      "valueSet" : ["https://mos.esante.gouv.fr/NOS/JDV_J66-TypeCode-DMP/FHIR/JDV-J66-TypeCode-DMP|20240927120000"]
    }]
  }
}

```
