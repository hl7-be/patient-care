Alias: $CandidateList = http://hl7.org/fhir/StructureDefinition/task-candidateList
Profile: BeTask
Parent: Task
Id: be-task
Title: "BeTask"
Description: "This is the profile for Task."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-01-18T09:02:46+00:00"
* ^jurisdiction = $m49.htm#056
* ^jurisdiction.text = "Belgium"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

* status MS
* for MS 
* requester MS
* requester only Reference(BePatient or BePractitioner or BeOrganization or RelatedPerson or BePractitionerRole)
* owner MS
* owner only Reference(BePatient or BePractitioner or BeOrganization or BeCareTeam or RelatedPerson or BePractitionerRole)
* for MS

* extension contains $CandidateList named task-candidateList 1..* MS
* extension[$CandidateList].valueReference only  Reference(BePatient or BePractitioner or BeOrganization or RelatedPerson)