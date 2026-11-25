# BeCareTeam - HL7 Belgium Patient Care v1.1.0

## Resource Profile: BeCareTeam 

**Usages:**

* Refer to this Profile: [BECarePlan](StructureDefinition-be-care-plan.md), [BeCareTeam](StructureDefinition-be-careteam.md) and [BeTask](StructureDefinition-be-task.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-care|current/StructureDefinition/StructureDefinition-be-careteam.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-careteam.csv), [Excel](../StructureDefinition-be-careteam.xlsx), [Schematron](../StructureDefinition-be-careteam.sch) 



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
  "description" : "This is the Belgian profile for care team. A care team defines the people and roles organized around a patient's care activities planned. It may also imply additional aspects such as access to information etc.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CareTeam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam"
    },
    {
      "id" : "CareTeam.extension",
      "path" : "CareTeam.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "CareTeam.extension:recordedDate",
      "path" : "CareTeam.extension",
      "sliceName" : "recordedDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.extension:created",
      "path" : "CareTeam.extension",
      "sliceName" : "created",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-created"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.extension:author",
      "path" : "CareTeam.extension",
      "sliceName" : "author",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.identifier",
      "path" : "CareTeam.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "min" : 1,
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
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period",
      "path" : "CareTeam.period",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization",
        "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitionerrole",
        "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-careteam",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "CareTeam.participant.onBehalfOf",
      "path" : "CareTeam.participant.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }]
    },
    {
      "id" : "CareTeam.participant.period",
      "path" : "CareTeam.participant.period",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.reasonReference",
      "path" : "CareTeam.reasonReference",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.managingOrganization",
      "path" : "CareTeam.managingOrganization",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"]
      }],
      "mustSupport" : true
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
    }]
  }
}

```
