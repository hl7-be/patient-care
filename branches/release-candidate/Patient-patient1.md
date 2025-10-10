# Example Patient - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Patient**

## Example Patient: Example Patient

Profile: [BePatient](https://www.ehealth.fgov.be/standards/fhir/core/2.1.2/StructureDefinition-be-patient.html)

Jane Doe Female, DoB: 1956-05-27 ( https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin#BeSSINNamingSystem#99999999999 (use: official, ))

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patient1",
  "meta" : {
    "profile" : [
      "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin",
      "value" : "99999999999"
    }
  ],
  "name" : [
    {
      "family" : "Doe",
      "given" : ["Jane"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1956-05-27"
}

```
