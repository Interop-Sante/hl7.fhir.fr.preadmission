# Questionnaire préadmission IRM - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Questionnaire: Questionnaire IRM - Préadmission 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

There are currently no QuestionnaireResponse instances for this Questionnaire defined in this IG.



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "questionnaire-chb-part",
  "url" : "https://hl7.fr/ig/fhir/preadmission/Questionnaire/questionnaire-chb-part",
  "version" : "1.0.0-ballot",
  "title" : "Questionnaire IRM - Préadmission",
  "status" : "active",
  "subjectType" : ["Appointment"],
  "date" : "2026-10-21T07:41:34+00:00",
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "item" : [{
    "linkId" : "private-room",
    "text" : "Souhaitez-vous une chambre particulière ?",
    "type" : "boolean"
  }]
}

```
