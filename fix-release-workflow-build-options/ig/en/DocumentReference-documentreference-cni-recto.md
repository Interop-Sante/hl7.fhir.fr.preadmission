# Document de préadmission - CNI recto - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example DocumentReference: Document de préadmission - CNI recto

Profile: [Fr Preadmission DocumentReference Profile](StructureDefinition-preadmission-documentreference-fr.md)

**status**: Current

**type**: Recto Carte d’identité

**subject**: [Jean Dupont](Patient-patient-001.md)

**date**: 2025-05-01 10:00:00+0100

> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Title** | **Creation** |
| * | application/pdf | [https://example.com/documents/cni-recto.pdf](https://example.com/documents/cni-recto.pdf) | Carte d'identité - Recto | 2025-04-30 15:00:00+0100 |


### Contexts

| | |
| :--- | :--- |
| - | **Encounter** |
| * | [Consultation IRM refusée](Encounter-encounter-irm-refused.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "documentreference-cni-recto",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/preadmission/StructureDefinition/preadmission-documentreference-fr"]
  },
  "status" : "current",
  "type" : {
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/preadmission/CodeSystem/document-type-cs",
      "code" : "CN_RECTO",
      "display" : "Recto Carte d’identité"
    }]
  },
  "subject" : {
    "reference" : "Patient/patient-001",
    "display" : "Jean Dupont"
  },
  "date" : "2025-05-01T10:00:00+01:00",
  "content" : [{
    "attachment" : {
      "contentType" : "application/pdf",
      "url" : "https://example.com/documents/cni-recto.pdf",
      "title" : "Carte d'identité - Recto",
      "creation" : "2025-04-30T15:00:00+01:00"
    }
  }],
  "context" : {
    "encounter" : [{
      "reference" : "Encounter/encounter-irm-refused",
      "display" : "Consultation IRM refusée"
    }]
  }
}

```
