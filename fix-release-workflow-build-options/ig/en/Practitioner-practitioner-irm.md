# Praticien IRM - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example Practitioner: Praticien IRM

Profile: [FR Core Practitioner Profile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-practitioner.html)

Sophie Martin (http://example.com/practitioner-ids#IRM-001)

-------

| | |
| :--- | :--- |
| Gender: | Female |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "practitioner-irm",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner"]
  },
  "identifier" : [{
    "system" : "http://example.com/practitioner-ids",
    "value" : "IRM-001"
  }],
  "name" : [{
    "family" : "Martin",
    "given" : ["Sophie"]
  }],
  "gender" : "female"
}

```
