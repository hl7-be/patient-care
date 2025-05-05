Profile: BeGoal
Parent: Goal
Id: be-goal
Title: "BeGoal"
Description: "This is the profile for Goal."
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
* lifecycleStatus MS
* category MS 
* expressedBy 1..1 MS 
* expressedBy only Reference(BePatient or BePractitionerRole or BePatient or RelatedPerson)
* subject MS
* subject only Reference(BePatient or Group)
* description MS