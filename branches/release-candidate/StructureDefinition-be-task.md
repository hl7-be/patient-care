# BeTask - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeTask**

## Resource Profile: BeTask 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-task | *Version*:1.1.0 |
| Active as of 2021-01-18 | *Computable Name*:BeTask |

 
This is the profile for Task. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-care|current/StructureDefinition/be-task)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-task.csv), [Excel](StructureDefinition-be-task.xlsx), [Schematron](StructureDefinition-be-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-task",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-task",
  "version" : "1.1.0",
  "name" : "BeTask",
  "title" : "BeTask",
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
  "description" : "This is the profile for Task.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Task",
        "path" : "Task"
      },
      {
        "id" : "Task.extension",
        "path" : "Task.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Task.extension:task-candidateList",
        "path" : "Task.extension",
        "sliceName" : "task-candidateList",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/task-candidateList"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Task.extension:task-candidateList.value[x]",
        "path" : "Task.extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Task.identifier",
        "path" : "Task.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "mustSupport" : true
      },
      {
        "id" : "Task.status",
        "path" : "Task.status",
        "mustSupport" : true
      },
      {
        "id" : "Task.for",
        "path" : "Task.for",
        "mustSupport" : true
      },
      {
        "id" : "Task.requester",
        "path" : "Task.requester",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Task.owner",
        "path" : "Task.owner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
