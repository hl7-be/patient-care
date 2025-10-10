# BeModelTask - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BeModelTask**

## Logical Model: BeModelTask 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelTask | *Version*:1.1.0 |
| Active as of 2025-10-10 | *Computable Name*:BeModelTask |

 
Logical model for Task. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-care|current/StructureDefinition/BeModelTask)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BeModelTask.csv), [Excel](StructureDefinition-BeModelTask.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BeModelTask",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelTask",
  "version" : "1.1.0",
  "name" : "BeModelTask",
  "title" : "BeModelTask",
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
  "description" : "Logical model for Task.",
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
  "type" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/BeModelTask",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "BeModelTask",
        "path" : "BeModelTask",
        "short" : "BeModelTask",
        "definition" : "Logical model for Task."
      },
      {
        "id" : "BeModelTask.identifier",
        "path" : "BeModelTask.identifier",
        "short" : "Business identifiers of the task",
        "definition" : "Business identifiers of the task",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Identifier"
          }
        ]
      },
      {
        "id" : "BeModelTask.author",
        "path" : "BeModelTask.author",
        "short" : "Author of the task",
        "definition" : "Author of the task",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference"
          }
        ]
      },
      {
        "id" : "BeModelTask.status",
        "path" : "BeModelTask.status",
        "short" : "Status of the task",
        "definition" : "Status of the task",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "BeModelTask.priority",
        "path" : "BeModelTask.priority",
        "short" : "Priority of the task",
        "definition" : "Priority of the task",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "BeModelTask.owner",
        "path" : "BeModelTask.owner",
        "short" : "Owners of the task (can be individuals or teams)",
        "definition" : "Owners of the task (can be individuals or teams)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/valueset-reference"]
          }
        ]
      }
    ]
  }
}

```
