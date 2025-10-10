# BeCareTeam - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeCareTeam**

## Resource Profile: BeCareTeam 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam | *Version*:1.1.0 |
| Active as of 2021-01-18 | *Computable Name*:BeCareTeam |

 
This is the Belgian profile for care team. A care team defines the people and roles organized around a patient’s care activities planned. It may also imply additional aspects such as access to information etc. 

**Usages:**

* Refer to this Profile: [BECarePlan](StructureDefinition-be-care-plan.md), [BeCareTeam](StructureDefinition-be-careteam.md) and [BeTask](StructureDefinition-be-task.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-care|current/StructureDefinition/be-careteam)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-careteam.csv), [Excel](StructureDefinition-be-careteam.xlsx), [Schematron](StructureDefinition-be-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-careteam",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam",
  "version" : "1.1.0",
  "name" : "BeCareTeam",
  "title" : "BeCareTeam",
  "status" : "active",
  "date" : "2021-01-18T09:02:46+00:00",
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
  "description" : "This is the Belgian profile for care team. A care team defines the people and roles organized around a patient's care activities planned. It may also imply additional aspects such as access to information etc.",
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
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CareTeam",
        "path" : "CareTeam"
      },
      {
        "id" : "CareTeam.identifier",
        "path" : "CareTeam.identifier",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.status",
        "path" : "CareTeam.status",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.category",
        "path" : "CareTeam.category",
        "mustSupport" : true,
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://hl7.org/fhir/ValueSet/care-team-category"
        }
      },
      {
        "id" : "CareTeam.name",
        "path" : "CareTeam.name",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.subject",
        "path" : "CareTeam.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ]
      },
      {
        "id" : "CareTeam.period",
        "path" : "CareTeam.period",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.participant",
        "path" : "CareTeam.participant",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.participant.member",
        "path" : "CareTeam.participant.member",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "CareTeam.participant.onBehalfOf",
        "path" : "CareTeam.participant.onBehalfOf",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "CareTeam.managingOrganization",
        "path" : "CareTeam.managingOrganization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
            ]
          }
        ]
      },
      {
        "id" : "CareTeam.telecom",
        "path" : "CareTeam.telecom",
        "mustSupport" : true
      },
      {
        "id" : "CareTeam.note",
        "path" : "CareTeam.note",
        "mustSupport" : true
      }
    ]
  }
}

```
