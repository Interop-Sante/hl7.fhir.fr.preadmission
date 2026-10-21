# Extension AMC Étendue ROC - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Extension: Extension AMC Étendue ROC 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Fr Preadmission Coverage Profile](StructureDefinition-preadmission-coverage-fr.md)
* Examples for this Extension: [Coverage/coverage-amc](Coverage-coverage-amc.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.fr.preadmission|current/StructureDefinition/StructureDefinition-fr-coverage-amc-extended.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-coverage-amc-extended.csv), [Excel](../StructureDefinition-fr-coverage-amc-extended.xlsx), [Schematron](../StructureDefinition-fr-coverage-amc-extended.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-coverage-amc-extended",
  "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/fr-coverage-amc-extended",
  "version" : "1.0.0-ballot",
  "name" : "FrCoverageAMCExtension",
  "title" : "Extension AMC Étendue ROC",
  "status" : "active",
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
  "description" : "Extension pour les informations AMC étendues issues de l'attestation harmonisée / DataMatrix AMC",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Coverage"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Extension AMC Étendue ROC",
      "definition" : "Extension pour les informations AMC étendues issues de l'attestation harmonisée / DataMatrix AMC"
    },
    {
      "id" : "Extension.extension:codeCSR",
      "path" : "Extension.extension",
      "sliceName" : "codeCSR",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:codeCSR.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:codeCSR.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "codeCSR"
    },
    {
      "id" : "Extension.extension:codeCSR.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Extension.extension:datamatrix",
      "path" : "Extension.extension",
      "sliceName" : "datamatrix",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:datamatrix.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:datamatrix.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "datamatrix"
    },
    {
      "id" : "Extension.extension:datamatrix.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:conventionParDomaine",
      "path" : "Extension.extension",
      "sliceName" : "conventionParDomaine",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension",
      "path" : "Extension.extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:codeConvention",
      "path" : "Extension.extension.extension",
      "sliceName" : "codeConvention",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:codeConvention.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:codeConvention.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "codeConvention"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:codeConvention.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:domaine",
      "path" : "Extension.extension.extension",
      "sliceName" : "domaine",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:domaine.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:domaine.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "domaine"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:domaine.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:tousDomaines",
      "path" : "Extension.extension.extension",
      "sliceName" : "tousDomaines",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:tousDomaines.extension",
      "path" : "Extension.extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:tousDomaines.url",
      "path" : "Extension.extension.extension.url",
      "fixedUri" : "tousDomaines"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.extension:tousDomaines.value[x]",
      "path" : "Extension.extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:conventionParDomaine.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "conventionParDomaine"
    },
    {
      "id" : "Extension.extension:conventionParDomaine.value[x]",
      "path" : "Extension.extension.value[x]",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/fr-coverage-amc-extended"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
