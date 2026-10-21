# Couverture sociale AMO - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example Coverage: Couverture sociale AMO

Profile: [Fr Preadmission Coverage Profile](StructureDefinition-preadmission-coverage-fr.md)

**identifier**: `http://example.com/identifiers/coverage`/AMO-2025-001 (use: official)

**status**: Active

**type**: public healthcare

**subscriber**: [Jean Dupont](Patient-patient-001.md)

**subscriberId**: 123456789012345

**beneficiary**: [Jean Dupont](Patient-patient-001.md)

**period**: 2025-01-01 00:00:00+0100 --> 2025-12-31 23:59:59+0100

**payor**: Assurance Maladie Obligatoire



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "coverage-amo",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-coverage-fr"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "http://example.com/identifiers/coverage",
    "value" : "AMO-2025-001"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "PUBLICPOL"
    }]
  },
  "subscriber" : {
    "reference" : "Patient/patient-001",
    "display" : "Jean Dupont"
  },
  "subscriberId" : "123456789012345",
  "beneficiary" : {
    "reference" : "Patient/patient-001",
    "display" : "Jean Dupont"
  },
  "period" : {
    "start" : "2025-01-01T00:00:00+01:00",
    "end" : "2025-12-31T23:59:59+01:00"
  },
  "payor" : [{
    "display" : "Assurance Maladie Obligatoire"
  }]
}

```
