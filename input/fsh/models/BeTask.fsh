Logical: BeModelTask
// Id: be-model-task
Title: "BeModelTask"
Description: "Logical model for Task."

* identifier 0..* Identifier "Business identifiers of the task"
* author 1..1 Reference "Author of the task"
* status 1..1 code "Status of the task"
* priority 0..1 code "Priority of the task"
* owner 0..* reference "Owners of the task (can be individuals or teams)"
