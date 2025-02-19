Profile: BeCarePlan
Parent: CarePlan
Id: be-care-plan
Title: "BECarePlan"
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

* contributor only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization or BeCareTeam or Device or RelatedPerson)
* contributor MS

* careTeam only Reference(BeCareTeam)
* careTeam MS

* goal only Reference(BeGoal)
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

* encounter MS
* period MS
