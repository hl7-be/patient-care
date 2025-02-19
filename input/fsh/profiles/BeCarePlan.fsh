Profile: BeCarePlan
Parent: CarePlan
Id: be-care-plan
Title: "Care Plan"
Description: "This is the profile for Care Plan. A Care Plan contains the activities planned and/or performed by a care team to deliver care for a particular patient, usually targeting a specific goal or condition - or a set thereof."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-01-18T09:02:46+00:00"
* ^jurisdiction = $m49.htm#056
* ^jurisdiction.text = "Belgium"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
// we will define slices soon
* status MS
* intent MS
* category MS 
* category ^comment = "Category can be used for filtering plan(s) on the type of care. This profile contains no specific ValueSets to indicate which categories can be used in a BeCarePlan."

* title MS
* description MS


* subject only Reference(BePatient or Group)
* subject MS

* period MS
* author only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization or BeCareTeam or Device or RelatedPerson)
* author MS

* careTeam only Reference(BeCareTeam)
* careTeam MS

* goal MS

* instantiatesCanonical MS
* instantiatesCanonical ^short = "Protocol or definition that is instantiated by this care plan"
* instantiatesCanonical ^comment = "This will be used when we have the &quot;Care Plan Templates&quot; - for example from weight loss to quit smoking, or hip replacement surgery physiotherapy for recovery"
* instantiatesUri MS
* instantiatesUri ^short = "The protocol or definition that is instantiated by this care plan"
* instantiatesUri ^comment = "This is used for supporting external references to the care plan or protocol e.g. government guidelines"



* basedOn only Reference(BeCarePlan)
* basedOn MS
* partOf only Reference(BeCarePlan)
* partOf MS


//* basedOn ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
//* basedOn ^type.extension.valueBoolean = true
//* replaces only Reference(BeCarePlan)
//* replaces MS
//* replaces ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
//* replaces ^type.extension.valueBoolean = true
//* partOf ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
//* partOf ^type.extension.valueBoolean = true
//* status MS
//* intent MS
//* category ^definition = "Identifies what &quot;kind&quot; of plan this is to support differentiation between multiple co-existing plans; e.g. &quot;Home health&quot;, &quot;psychiatric&quot;, &quot;asthma&quot;, &quot;disease management&quot;, &quot;wellness plan&quot;, etc.&#xD;&#xA;This should be controlled terminology (e.g. SNOMED)"
* encounter MS
* period MS
//* created ^comment = "Note that this is NOT the care plan start date, but the date it was created"


// * contributor only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization or BeCareTeam)
// * contributor MS

// * activity MS
// * activity.outcomeCodeableConcept MS
// * activity.progress MS
// * activity.detail.kind MS
// * activity.detail.instantiatesCanonical MS
// * activity.detail.instantiatesUri MS
// * activity.detail.code MS
// * activity.detail.status MS
// * activity.detail.statusReason MS
// * activity.detail.doNotPerform MS
// * activity.detail.scheduled[x] MS
// * activity.detail.location MS
// * activity.detail.performer only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization or BeCareTeam)
// * activity.detail.performer MS
// * activity.detail.description MS