# document-type-cs - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## CodeSystem: document-type-cs (Expérimental) 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [preadmission-document-type-vs](ValueSet-preadmission-document-type-vs.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "document-type-cs",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem|4.0.1"]
  },
  "url" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/document-type-cs",
  "version" : "1.0.0-ballot",
  "name" : "PreadmissionDocumentTypeCodeSystem",
  "title" : "document-type-cs",
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
  "description" : "Types de documents additionnels pour la préadmission",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "CN_RECTO",
    "display" : "Recto Carte d’identité"
  },
  {
    "code" : "CN_VERSO",
    "display" : "Verso Carte d’identité"
  },
  {
    "code" : "ATTEST_VITALE",
    "display" : "Carte Vitale"
  },
  {
    "code" : "JUSTIFICATIF_ID",
    "display" : "Justificatif d'identité"
  },
  {
    "code" : "MUTUELLE",
    "display" : "Carte mutuelle"
  },
  {
    "code" : "MUTUELLE_RECTO",
    "display" : "Recto Carte mutuelle"
  },
  {
    "code" : "MUTUELLE_VERSO",
    "display" : "Verso Carte mutuelle"
  },
  {
    "code" : "JUSTIFICATIF_DOM",
    "display" : "Justificatif de domicile"
  },
  {
    "code" : "ARRET_TRAVAIL",
    "display" : "Arrêt de travail"
  },
  {
    "code" : "PERS_PREVENIR",
    "display" : "Fiche de déclaration de la personne à prévenir"
  },
  {
    "code" : "PERS_CONFIANCE",
    "display" : "Fiche de déclaration de la personne de confiance"
  }]
}

```
