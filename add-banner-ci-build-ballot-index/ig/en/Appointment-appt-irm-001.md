# Prise de rendez-vous IRM cérébrale - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example Appointment: Prise de rendez-vous IRM cérébrale

Profile: [Fr Preadmission Appointment Profile](StructureDefinition-preadmission-appointment-fr.md)

**status**: Booked

**reasonCode**: IRM cérébrale (procédure)

**start**: 2025-05-15 10:30:00+0100

**end**: 2025-05-15 11:00:00+0100

> **participant****actor**: [Jean Dupont](Patient-patient-001.md)**status**: Accepted

> **participant****actor**: [Sophie Martin (http://example.com/practitioner-ids#IRM-001)](Practitioner-practitioner-irm.md)**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "appt-irm-001",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-appointment-fr"]
  },
  "status" : "booked",
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "241541005",
      "display" : "IRM cérébrale (procédure)"
    }]
  }],
  "start" : "2025-05-15T10:30:00+01:00",
  "end" : "2025-05-15T11:00:00+01:00",
  "participant" : [{
    "actor" : {
      "reference" : "Patient/patient-001",
      "display" : "Jean Dupont"
    },
    "status" : "accepted"
  },
  {
    "actor" : {
      "reference" : "Practitioner/practitioner-irm"
    },
    "status" : "accepted"
  }]
}

```
