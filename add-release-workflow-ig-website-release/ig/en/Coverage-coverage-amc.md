# Couverture sociale AMC - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example Coverage: Couverture sociale AMC

Profile: [Fr Preadmission Coverage Profile](StructureDefinition-preadmission-coverage-fr.md)

> **Extension AMC Étendue ROC**
> **url**codeCSR
**value**: CSR67890
> **url**datamatrix
**value**: (exemple)DATAMATRIX-AMC-987654321**codeConvention**: CONV12345**domaine**: consultation**domaine**: hospitalisation
> **url**conventionParDomaine

**identifier**: `http://example.com/identifiers/coverage`/AMC-2025-001 (use: official)

**status**: Active

**type**: extended healthcare

**subscriber**: [Jean Dupont](Patient-patient-001.md)

**subscriberId**: AMC-987654321

**beneficiary**: [Jean Dupont](Patient-patient-001.md)

**period**: 2025-01-01 00:00:00+0100 --> 2025-12-31 23:59:59+0100

**payor**: Nom Assurance Maladie Complémentaire (Identifier: `urn:oid:1.2.250.1.213.1.1.4.6`/987654321)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "coverage-amc",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-coverage-fr"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "codeCSR",
      "valueCode" : "CSR67890"
    },
    {
      "url" : "datamatrix",
      "valueString" : "(exemple)DATAMATRIX-AMC-987654321"
    },
    {
      "extension" : [{
        "url" : "codeConvention",
        "valueCode" : "CONV12345"
      },
      {
        "url" : "domaine",
        "valueCode" : "consultation"
      },
      {
        "url" : "domaine",
        "valueCode" : "hospitalisation"
      }],
      "url" : "conventionParDomaine"
    }],
    "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/fr-coverage-amc-extended"
  }],
  "identifier" : [{
    "use" : "official",
    "system" : "http://example.com/identifiers/coverage",
    "value" : "AMC-2025-001"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "EHCPOL"
    }]
  },
  "subscriber" : {
    "reference" : "Patient/patient-001",
    "display" : "Jean Dupont"
  },
  "subscriberId" : "AMC-987654321",
  "beneficiary" : {
    "reference" : "Patient/patient-001",
    "display" : "Jean Dupont"
  },
  "period" : {
    "start" : "2025-01-01T00:00:00+01:00",
    "end" : "2025-12-31T23:59:59+01:00"
  },
  "payor" : [{
    "identifier" : {
      "system" : "urn:oid:1.2.250.1.213.1.1.4.6",
      "value" : "987654321"
    },
    "display" : "Nom Assurance Maladie Complémentaire"
  }]
}

```
