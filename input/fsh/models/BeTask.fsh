Logical: BeModelTask
Id: be-model-task
Title: "Logical: BeModelTask"
Description: "Logical model for Task."

* identifier 0..* Identifier "Business identifiers of the task"
* author 1..1 Reference "Author (requester) of the task"
* status 1..1 code "Status of the task"
* priority 0..1 code "Priority of the task"
* responsible 0..1 reference "Responsible of the task (can be individual or team)"
