# Consultation IRM externe - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example Encounter: Consultation IRM externe

Profile: [Fr Preadmission Encounter Profile](StructureDefinition-preadmission-encounter-fr.md)

**Extension Statut Pré-admission**: Pré-admission prête

**identifier**: Visit Number/15655244 (use: temp)

**status**: Planned

**class**: [ActCode: AMB](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Jean Dupont](Patient-patient-001.md)

**appointment**: [Rendez-vous préadmission IRM](Appointment-appt-irm-001.md)

**period**: 2025-05-15 10:30:00+0100 --> 2025-05-15 11:00:00+0100



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-irm-externe",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-encounter-fr"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/preadmission/StructureDefinition/statut-preadmission-fr",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/preadmission-status-code-system",
        "code" : "READY"
      }]
    }
  }],
  "identifier" : [{
    "use" : "temp",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-identifier-type",
        "code" : "VN",
        "display" : "Visit Number"
      }]
    },
    "system" : "http://example.com/identifiers/encounters",
    "value" : "15655244"
  }],
  "status" : "planned",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/patient-001",
    "display" : "Jean Dupont"
  },
  "appointment" : [{
    "reference" : "Appointment/appt-irm-001",
    "display" : "Rendez-vous préadmission IRM"
  }],
  "period" : {
    "start" : "2025-05-15T10:30:00+01:00",
    "end" : "2025-05-15T11:00:00+01:00"
  }
}

```
