# BeModelCareTeam - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeModelCareTeam**

## Logical Model: BeModelCareTeam 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCareTeam | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeModelCareTeam |

 
Logical model for Care Teams. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-care|current/StructureDefinition/BeModelCareTeam)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelCareTeam.csv), [Excel](StructureDefinition-BeModelCareTeam.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelCareTeam",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCareTeam",
  "version" : "1.1.0",
  "name" : "BeModelCareTeam",
  "title" : "BeModelCareTeam",
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
  "description" : "Logical model for Care Teams.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelCareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelCareTeam",
        "path" : "BeModelCareTeam",
        "short" : "BeModelCareTeam",
        "definition" : "Logical model for Care Teams."
      },
      {
        "id" : "BeModelCareTeam.name",
        "path" : "BeModelCareTeam.name",
        "short" : "Name of the care team",
        "definition" : "Name of the care team",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.identifier",
        "path" : "BeModelCareTeam.identifier",
        "short" : "Business identifiers of the care team",
        "definition" : "Business identifiers of the care team",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.category",
        "path" : "BeModelCareTeam.category",
        "short" : "Type of team",
        "definition" : "Type of team",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.status",
        "path" : "BeModelCareTeam.status",
        "short" : "Status of the care team",
        "definition" : "Status of the care team",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.subject",
        "path" : "BeModelCareTeam.subject",
        "short" : "the subject of care for the care team",
        "definition" : "the subject of care for the care team",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.period",
        "path" : "BeModelCareTeam.period",
        "short" : "Time period of the care team",
        "definition" : "Time period of the care team",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.participant",
        "path" : "BeModelCareTeam.participant",
        "short" : "Members of the care team",
        "definition" : "Members of the care team",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.participant.role",
        "path" : "BeModelCareTeam.participant.role",
        "short" : "Role of the team member",
        "definition" : "Role of the team member",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.participant.member",
        "path" : "BeModelCareTeam.participant.member",
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
        "id" : "BeModelCareTeam.participant.period",
        "path" : "BeModelCareTeam.participant.period",
        "short" : "Time period of the membership",
        "definition" : "Time period of the membership",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.managingOrganization",
        "path" : "BeModelCareTeam.managingOrganization",
        "short" : "Organization responsible for the care team",
        "definition" : "Organization responsible for the care team",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.contact",
        "path" : "BeModelCareTeam.contact",
        "short" : "Contact details for the care team",
        "definition" : "Contact details for the care team",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "BeModelCareTeam.note",
        "path" : "BeModelCareTeam.note",
        "short" : "Additional notes",
        "definition" : "Additional notes",
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
