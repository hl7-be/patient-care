Profile: BeTask
Parent: Task
Id: be-task
Title: "Task"
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
* owner MS
* requester MS