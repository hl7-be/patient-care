# CareSet RecordedDate - HL7 Belgium Patient Care v1.1.0

## Extension: CareSet RecordedDate 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [BECarePlan](StructureDefinition-be-care-plan.md) and [BeCareTeam](StructureDefinition-be-careteam.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.be.patient-care|current/StructureDefinition/StructureDefinition-be-ext-careset-recorded-date.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-be-ext-careset-recorded-date.csv), [Excel](../StructureDefinition-be-ext-careset-recorded-date.xlsx), [Schematron](../StructureDefinition-be-ext-careset-recorded-date.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "be-ext-careset-recorded-date",
  "url" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date",
  "version" : "1.1.0",
  "name" : "BeCareSetRecordedDate",
  "title" : "CareSet RecordedDate",
  "status" : "active",
  "date" : "2026-11-25T20:30:13+00:00",
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
  "description" : "Recording date by the Author or Recorder, that is the date of the last update. Coupled with the Business Identifier it enables CareSet history management, guaranteeing access to the latest version of the content.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BE",
      "display" : "Belgium"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "CarePlan"
  },
  {
    "type" : "element",
    "expression" : "CareTeam"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "CareSet RecordedDate",
      "definition" : "Recording date by the Author or Recorder, that is the date of the last update. Coupled with the Business Identifier it enables CareSet history management, guaranteeing access to the latest version of the content."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
