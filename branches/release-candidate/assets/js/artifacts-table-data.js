window.artifactsTableData = {
  "en": {
    "labels": {
      "type":        "Type",
      "category":    "Category",
      "useGrouping": "Use grouping",
      "clearAll":      "Clear all",
      "linkToSection": "Link to this section",
      "headings":      "Headings",
      "headingsFull":  "Full",
      "headingsTitle": "Title",
      "headingsNone":  "None"
    },
    "groupDescriptions": {
      "-str-logicalmodel": "<p>These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.</p>\n"
      ,"-str-profile": "<p>These define constraints on FHIR resources for systems conforming to this implementation guide.</p>\n"
      ,"-str-extension": "<p>These define constraints on FHIR data types for systems conforming to this implementation guide.</p>\n"
      ,"-ex-example": "<p>These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.</p>\n"
    },
    "rows": [
      { "p":1, "gid":"-str-logicalmodel", "g":"Structures: Logical Models", "n":"BeModelCarePlan", "i":"BeModelCarePlan", "t":"StructureDefinition", "u":"StructureDefinition-BeModelCarePlan.html", "r":"StructureDefinition/BeModelCarePlan", "d":"<p>Logical model for Care Plan.</p>" },
      { "p":1, "gid":"-str-logicalmodel", "g":"Structures: Logical Models", "n":"BeModelCareTeam", "i":"BeModelCareTeam", "t":"StructureDefinition", "u":"StructureDefinition-BeModelCareTeam.html", "r":"StructureDefinition/BeModelCareTeam", "d":"<p>Logical model for Care Teams.</p>" },
      { "p":1, "gid":"-str-logicalmodel", "g":"Structures: Logical Models", "n":"BeModelGoal", "i":"BeModelGoal", "t":"StructureDefinition", "u":"StructureDefinition-BeModelGoal.html", "r":"StructureDefinition/BeModelGoal", "d":"<p>Logical model for Goal.</p>" },
      { "p":1, "gid":"-str-logicalmodel", "g":"Structures: Logical Models", "n":"BeModelTask", "i":"BeModelTask", "t":"StructureDefinition", "u":"StructureDefinition-BeModelTask.html", "r":"StructureDefinition/BeModelTask", "d":"<p>Logical model for Task.</p>" },
      { "p":2, "gid":"-str-profile", "g":"Structures: Resource Profiles", "n":"BECarePlan", "i":"be-care-plan", "t":"StructureDefinition", "u":"StructureDefinition-be-care-plan.html", "r":"StructureDefinition/be-care-plan", "d":"<p>This is the profile for Care Plan. A Care Plan contains the activities planned and/or performed by a care team to deliver care for a particular patient, usually targeting a specific goal or condition - or a set thereof.</p>" },
      { "p":2, "gid":"-str-profile", "g":"Structures: Resource Profiles", "n":"BeCareTeam", "i":"be-careteam", "t":"StructureDefinition", "u":"StructureDefinition-be-careteam.html", "r":"StructureDefinition/be-careteam", "d":"<p>This is the Belgian profile for care team. A care team defines the people and roles organized around a patient’s care activities planned. It may also imply additional aspects such as access to information etc.</p>" },
      { "p":2, "gid":"-str-profile", "g":"Structures: Resource Profiles", "n":"BeGoal", "i":"be-goal", "t":"StructureDefinition", "u":"StructureDefinition-be-goal.html", "r":"StructureDefinition/be-goal", "d":"<p>This is the profile for Goal.</p>" },
      { "p":2, "gid":"-str-profile", "g":"Structures: Resource Profiles", "n":"BeTask", "i":"be-task", "t":"StructureDefinition", "u":"StructureDefinition-be-task.html", "r":"StructureDefinition/be-task", "d":"<p>This is the profile for Task.</p>" },
      { "p":3, "gid":"-str-extension", "g":"Structures: Extension Definitions", "n":"CareSet Created", "i":"be-ext-careset-created", "t":"StructureDefinition", "u":"StructureDefinition-be-ext-careset-created.html", "r":"StructureDefinition/be-ext-careset-created", "d":"<p>The moment the CareSet was first created.</p>" },
      { "p":3, "gid":"-str-extension", "g":"Structures: Extension Definitions", "n":"CareSet RecordedDate", "i":"be-ext-careset-recorded-date", "t":"StructureDefinition", "u":"StructureDefinition-be-ext-careset-recorded-date.html", "r":"StructureDefinition/be-ext-careset-recorded-date", "d":"<p>Recording date by the Author or Recorder, that is the date of the last update. Coupled with the Business Identifier it enables CareSet history management, guaranteeing access to the latest version of the content.</p>" },
      { "p":4, "gid":"-ex-example", "g":"Example: Example Instances", "n":"Example Patient", "i":"patient1", "t":"Patient", "u":"Patient-patient1.html", "r":"Patient/patient1", "d":"" }
    ]
  }
};
