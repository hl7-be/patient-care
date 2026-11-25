# BeModelGoal - HL7 Belgium Patient Care v1.1.0

## Logical Model: BeModelGoal 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-care|current/StructureDefinition/StructureDefinition-BeModelGoal.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelGoal.csv), [Excel](../StructureDefinition-BeModelGoal.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelGoal",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelGoal",
  "version" : "1.1.0",
  "name" : "BeModelGoal",
  "title" : "BeModelGoal",
  "status" : "active",
  "date" : "2026-11-25T19:55:55+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [{
    "name" : "eHealth Platform",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ehealth.fgov.be/standards/fhir"
    },
    {
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net"
    }]
  },
  {
    "name" : "Message Structure eHealth",
    "telecom" : [{
      "system" : "email",
      "value" : "support@be-ehealth-standards.atlassian.net",
      "use" : "work"
    }]
  }],
  "description" : "Logical model for Goal.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelGoal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelGoal",
      "path" : "BeModelGoal",
      "short" : "BeModelGoal",
      "definition" : "Logical model for Goal."
    },
    {
      "id" : "BeModelGoal.identifier",
      "path" : "BeModelGoal.identifier",
      "short" : "Identifiers assigned to this goal",
      "definition" : "Identifiers assigned to this goal",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelGoal.name",
      "path" : "BeModelGoal.name",
      "short" : "Human-readable name for the goal",
      "definition" : "Human-readable name for the goal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelGoal.category",
      "path" : "BeModelGoal.category",
      "short" : "Category of goal",
      "definition" : "Category of goal",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "BeModelGoal.status",
      "path" : "BeModelGoal.status",
      "short" : "Status of the goal",
      "definition" : "Status of the goal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
