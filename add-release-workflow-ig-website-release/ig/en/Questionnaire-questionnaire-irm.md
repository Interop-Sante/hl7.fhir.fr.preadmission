# Reponse Questionnaire préadmission IRM - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Questionnaire: Questionnaire IRM - Préadmission 

*  [Tree view](#tabs-tree) 
*  [Sample Rendering](#tabs-sample) 
*  [Form Logic](#tabs-logic) 

### Test this Questionnaire

### Responses for this Questionnaire

* [Questionnaire posé lors de la prise de rendez-vous pour une IRM.](QuestionnaireResponse-qr-irm-001.md)



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "questionnaire-irm",
  "url" : "https://hl7.fr/ig/fhir/preadmission/Questionnaire/questionnaire-irm",
  "version" : "1.0.0-ballot",
  "title" : "Questionnaire IRM - Préadmission",
  "status" : "active",
  "subjectType" : ["Appointment"],
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
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "item" : [{
    "linkId" : "implant",
    "text" : "Avez-vous un implant métallique ou un pacemaker ?",
    "type" : "boolean"
  },
  {
    "linkId" : "grossesse",
    "text" : "Êtes-vous actuellement enceinte ?",
    "type" : "boolean"
  },
  {
    "linkId" : "allergies",
    "text" : "Avez-vous des allergies connues ?",
    "type" : "boolean"
  },
  {
    "linkId" : "medications",
    "text" : "Prenez-vous des médicaments régulièrement ?",
    "type" : "boolean"
  }]
}

```
