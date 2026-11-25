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

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
// we will define slices soon
* status 1..1 MS
* intent 1..1 MS
* category 0..1 MS
* category ^comment = "Category can be used for filtering plan(s) on the type of care. This profile contains no specific ValueSets to indicate which categories can be used in a BeCarePlan."

* title MS
* description MS

* subject only Reference(BePatient or Group)
* subject 1..1 MS

* period MS
* author only Reference(BePatient or BePractitioner or BePractitionerRole or BeOrganization or BeCareTeam or Device or RelatedPerson)
* author 1..1 MS

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
* partOf 0..1 MS

* encounter MS
* period MS

// created -> the moment the CareSet was created. Native on R4 CarePlan, so no
// extension is needed here (unlike CareTeam).
* created 0..1 MS

// note -> additional free-text information about the CareSet content
* note 0..* MS

// activity -> the actions planned or performed within this CareSet
* activity 0..* MS

// addresses -> the condition/problem for which this CareSet was set up
* addresses 0..* MS

// replaces -> the previous version of the CarePlan that this one replaces.
// The reference is deliberately not constrained to BeCarePlan (see #50),
// even though basedOn and partOf above are, because that constraint is not
// in the business document.
* replaces 0..* MS

// recordedDate -> no native CarePlan equivalent -> extension
* extension contains
    BeCareSetRecordedDate named recordedDate 1..1 MS
