# document-type-ins-cs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## CodeSystem: document-type-ins-cs (Experimental) 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "document-type-ins-cs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/document-type-ins-cs",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionDocumentTypeINSCodeSystem",
  "title" : "document-type-ins-cs",
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
  "description" : "Types de documents additionnels pour qualifer une identité",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "DIE",
    "display" : "Dispositif d'identification électronique"
  },
  {
    "code" : "APPCV",
    "display" : "Application Carte Vitale"
  }]
}

```
