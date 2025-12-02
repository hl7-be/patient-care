# BECarePlan - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BECarePlan**

## Resource Profile: BECarePlan 

| | |
| :--- | :--- |
| *Official URL*:https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-care-plan | *Version*:1.1.0 |
| Active as of 2021-01-18 | *Computable Name*:BeCarePlan |

 
This is the profile for Care Plan. A Care Plan contains the activities planned and/or performed by a care team to deliver care for a particular patient, usually targeting a specific goal or condition - or a set thereof. 

**Usages:**

* Refer to this Profile: [BECarePlan](StructureDefinition-be-care-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.be.patient-care|current/StructureDefinition/be-care-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-be-care-plan.csv), [Excel](StructureDefinition-be-care-plan.xlsx), [Schematron](StructureDefinition-be-care-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-care-plan",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-care-plan",
  "version" : "1.1.0",
  "name" : "BeCarePlan",
  "title" : "BECarePlan",
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
  "description" : "This is the profile for Care Plan. A Care Plan contains the activities planned and/or performed by a care team to deliver care for a particular patient, usually targeting a specific goal or condition - or a set thereof.",
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
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan"
      },
      {
        "id" : "CarePlan.identifier",
        "path" : "CarePlan.identifier",
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
        "id" : "CarePlan.instantiatesCanonical",
        "path" : "CarePlan.instantiatesCanonical",
        "short" : "Protocol or definition that is instantiated by this care plan",
        "comment" : "This will be used when we have the &quot;Care Plan Templates&quot; - for example from weight loss to quit smoking, or hip replacement surgery physiotherapy for recovery",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.instantiatesUri",
        "path" : "CarePlan.instantiatesUri",
        "short" : "The protocol or definition that is instantiated by this care plan",
        "comment" : "This is used for supporting external references to the care plan or protocol e.g. government guidelines",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.basedOn",
        "path" : "CarePlan.basedOn",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-care-plan"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.partOf",
        "path" : "CarePlan.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-care-plan"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.intent",
        "path" : "CarePlan.intent",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.category",
        "path" : "CarePlan.category",
        "comment" : "Category can be used for filtering plan(s) on the type of care. This profile contains no specific ValueSets to indicate which categories can be used in a BeCarePlan.",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.description",
        "path" : "CarePlan.description",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.encounter",
        "path" : "CarePlan.encounter",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.period",
        "path" : "CarePlan.period",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.author",
        "path" : "CarePlan.author",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.contributor",
        "path" : "CarePlan.contributor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
              "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.careTeam",
        "path" : "CarePlan.careTeam",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.goal",
        "path" : "CarePlan.goal",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-goal"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
