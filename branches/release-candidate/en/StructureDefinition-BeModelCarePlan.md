# BeModelCarePlan - HL7 Belgium Patient Care v1.1.0

## Logical Model: BeModelCarePlan 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-care|current/StructureDefinition/StructureDefinition-BeModelCarePlan.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-BeModelCarePlan.csv), [Excel](../StructureDefinition-BeModelCarePlan.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelCarePlan",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCarePlan",
  "version" : "1.1.0",
  "name" : "BeModelCarePlan",
  "title" : "BeModelCarePlan",
  "status" : "active",
  "date" : "2026-11-25T20:30:26+00:00",
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
  "description" : "Logical model for Care Plan.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BeModelCarePlan",
      "path" : "BeModelCarePlan",
      "short" : "BeModelCarePlan",
      "definition" : "Logical model for Care Plan."
    },
    {
      "id" : "BeModelCarePlan.identifier",
      "path" : "BeModelCarePlan.identifier",
      "short" : "Identifiers assigned to this care plan",
      "definition" : "Identifiers assigned to this care plan",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "BeModelCarePlan.title",
      "path" : "BeModelCarePlan.title",
      "short" : "Title of the care plan",
      "definition" : "Title of the care plan",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelCarePlan.category",
      "path" : "BeModelCarePlan.category",
      "short" : "Type of plan",
      "definition" : "Type of plan",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/care-plan-category"
      }
    },
    {
      "id" : "BeModelCarePlan.basedOn",
      "path" : "BeModelCarePlan.basedOn",
      "short" : "Care plans that this care plan is based on",
      "definition" : "Care plans that this care plan is based on",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.partOf",
      "path" : "BeModelCarePlan.partOf",
      "short" : "The parent CareSet this CareSet is part of",
      "definition" : "The parent CareSet this CareSet is part of",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.status",
      "path" : "BeModelCarePlan.status",
      "short" : "status of the care plan",
      "definition" : "status of the care plan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/request-status"
      }
    },
    {
      "id" : "BeModelCarePlan.description",
      "path" : "BeModelCarePlan.description",
      "short" : "Description of the care plan",
      "definition" : "Description of the care plan",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BeModelCarePlan.patient",
      "path" : "BeModelCarePlan.patient",
      "short" : "The person who is the subject of the care referenced in this CareSet",
      "definition" : "The person who is the subject of the care referenced in this CareSet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.period",
      "path" : "BeModelCarePlan.period",
      "short" : "Time period plan covers",
      "definition" : "Time period plan covers",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "BeModelCarePlan.author",
      "path" : "BeModelCarePlan.author",
      "short" : "Who is responsible for plan",
      "definition" : "Who is responsible for plan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.careTeam",
      "path" : "BeModelCarePlan.careTeam",
      "short" : "Care team assigned to the care plan",
      "definition" : "Care team assigned to the care plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.goal",
      "path" : "BeModelCarePlan.goal",
      "short" : "Expressed goals that this care plan is intended to achieve",
      "definition" : "Expressed goals that this care plan is intended to achieve",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.note",
      "path" : "BeModelCarePlan.note",
      "short" : "Comments about the care plan",
      "definition" : "Comments about the care plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }]
    },
    {
      "id" : "BeModelCarePlan.intent",
      "path" : "BeModelCarePlan.intent",
      "short" : "Intent of the care plan",
      "definition" : "proposal | plan | order | option",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/care-plan-intent"
      }
    },
    {
      "id" : "BeModelCarePlan.recordedDate",
      "path" : "BeModelCarePlan.recordedDate",
      "short" : "Recording date by the author or recorder (date of last update)",
      "definition" : "Coupled with the business identifier, guarantees that the latest version of the CareSet is shown",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelCarePlan.created",
      "path" : "BeModelCarePlan.created",
      "short" : "Moment the CareSet was created",
      "definition" : "Moment the CareSet was created",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BeModelCarePlan.activity",
      "path" : "BeModelCarePlan.activity",
      "short" : "Actions planned or performed within this CareSet",
      "definition" : "Actions planned or performed within this CareSet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.addresses",
      "path" : "BeModelCarePlan.addresses",
      "short" : "The condition/problem for which this CareSet was set up",
      "definition" : "The condition/problem for which this CareSet was set up",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.encounter",
      "path" : "BeModelCarePlan.encounter",
      "short" : "The encounter referencing this CareSet",
      "definition" : "The encounter referencing this CareSet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.replaces",
      "path" : "BeModelCarePlan.replaces",
      "short" : "The previous version of the care plan that this one replaces",
      "definition" : "The previous version of the care plan that this one replaces",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "BeModelCarePlan.contributor",
      "path" : "BeModelCarePlan.contributor",
      "short" : "The person who adds content to the care plan",
      "definition" : "The person who adds content to the care plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
