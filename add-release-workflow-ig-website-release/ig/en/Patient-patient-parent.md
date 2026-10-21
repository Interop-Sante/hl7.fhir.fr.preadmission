# Patient de préadmission - Guide d’Implémentation FHIR – Pré-admission Hospitalière en Ligne v1.0.0-ballot

## Example Patient: Patient de préadmission

Profile: [FR Core Patient Profile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-patient.html)

Michel Dupont (official) Male, DoB: 1960-01-01 ( http://interopsante.org/fhir/NIR#123456789012345)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient-parent",
  "meta" : {
    "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
  },
  "identifier" : [{
    "system" : "http://interopsante.org/fhir/NIR",
    "value" : "123456789012345"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Dupont",
    "given" : ["Michel"]
  }],
  "gender" : "male",
  "birthDate" : "1960-01-01"
}

```
