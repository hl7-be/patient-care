# BeModelCarePlan - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeModelCarePlan**

## Logical Model: BeModelCarePlan 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCarePlan | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeModelCarePlan |

 
Logical model for Care Plan. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-care|current/StructureDefinition/BeModelCarePlan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelCarePlan.csv), [Excel](StructureDefinition-BeModelCarePlan.xlsx) 



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
  "date" : "2025-10-10T11:55:47+00:00",
  "publisher" : "eHealth Platform",
  "contact" : [
    {
      "name" : "eHealth Platform",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ehealth.fgov.be/standards/fhir"
        },
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net"
        }
      ]
    },
    {
      "name" : "Message Structure eHealth",
      "telecom" : [
        {
          "system" : "email",
          "value" : "support@be-ehealth-standards.atlassian.net",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Logical model for Care Plan.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "BE",
          "display" : "Belgium"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
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
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.name",
        "path" : "BeModelCarePlan.name",
        "short" : "Human-readable name for the care plan",
        "definition" : "Human-readable name for the care plan",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.category",
        "path" : "BeModelCarePlan.category",
        "short" : "Type of plan",
        "definition" : "Type of plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.basedOn",
        "path" : "BeModelCarePlan.basedOn",
        "short" : "Care plans that this care plan is based on",
        "definition" : "Care plans that this care plan is based on",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.partOf",
        "path" : "BeModelCarePlan.partOf",
        "short" : "Care plans that this care plan is part of",
        "definition" : "Care plans that this care plan is part of",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.status",
        "path" : "BeModelCarePlan.status",
        "short" : "status of the care plan",
        "definition" : "status of the care plan",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.description",
        "path" : "BeModelCarePlan.description",
        "short" : "Description of the care plan",
        "definition" : "Description of the care plan",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.instantiates",
        "path" : "BeModelCarePlan.instantiates",
        "short" : "Protocol or definition that is instantiated by this care plan",
        "definition" : "Protocol or definition that is instantiated by this care plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.subject",
        "path" : "BeModelCarePlan.subject",
        "short" : "Who care plan is for",
        "definition" : "Who care plan is for",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.period",
        "path" : "BeModelCarePlan.period",
        "short" : "Time period plan covers",
        "definition" : "Time period plan covers",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.author",
        "path" : "BeModelCarePlan.author",
        "short" : "Who is responsible for plan",
        "definition" : "Who is responsible for plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.careTeam",
        "path" : "BeModelCarePlan.careTeam",
        "short" : "Care team assigned to the care plan",
        "definition" : "Care team assigned to the care plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.goal",
        "path" : "BeModelCarePlan.goal",
        "short" : "Expressed goals that this care plan is intended to achieve",
        "definition" : "Expressed goals that this care plan is intended to achieve",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.participant",
        "path" : "BeModelCarePlan.participant",
        "short" : "Who is involved in the care plan",
        "definition" : "Who is involved in the care plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.participant.role",
        "path" : "BeModelCarePlan.participant.role",
        "short" : "Type of involvement",
        "definition" : "Type of involvement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.participant.member",
        "path" : "BeModelCarePlan.participant.member",
        "short" : "Who is involved",
        "definition" : "Who is involved",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.participant.period",
        "path" : "BeModelCarePlan.participant.period",
        "short" : "Time period of involvement",
        "definition" : "Time period of involvement",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.managingOrganization",
        "path" : "BeModelCarePlan.managingOrganization",
        "short" : "Organization responsible for the care plan",
        "definition" : "Organization responsible for the care plan",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.contact",
        "path" : "BeModelCarePlan.contact",
        "short" : "Contact details for the care plan",
        "definition" : "Contact details for the care plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "BeModelCarePlan.note",
        "path" : "BeModelCarePlan.note",
        "short" : "Comments about the care plan",
        "definition" : "Comments about the care plan",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
