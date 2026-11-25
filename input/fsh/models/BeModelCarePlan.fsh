Logical: BeModelCarePlan
Id: BeModelCarePlan
Title: "BeModelCarePlan"
Description: "Logical model for Care Plan."

* identifier 1..* Identifier "Identifiers assigned to this care plan"
* title 0..1 string "Title of the care plan"
* category 0..1 CodeableConcept "Type of plan"
* category from http://hl7.org/fhir/ValueSet/care-plan-category (extensible)
* basedOn 0..* Reference "Care plans that this care plan is based on"
* partOf 0..1 Reference "The parent CareSet this CareSet is part of"
* status 1..1 code "status of the care plan"
* status from http://hl7.org/fhir/ValueSet/request-status (required)
* description 0..1 string "Description of the care plan"
// Note: instantiates is not in the CarePlan business document. It corresponded
// to the FHIR instantiatesCanonical / instantiatesUri elements, which the
// business specification does not ask for, so it is not part of this model.
* patient 1..1 Reference "The person who is the subject of the care referenced in this CareSet"
* period 0..1 Period "Time period plan covers"
* author 1..1 Reference "Who is responsible for plan"
* careTeam 0..* Reference "Care team assigned to the care plan"
* goal 0..* Reference "Expressed goals that this care plan is intended to achieve"
// Note: participant, managingOrganization and contact are CareTeam elements,
// not CarePlan elements, and are not in the CarePlan business document. The
// team involved is referenced through careTeam above.
* note 0..* Annotation "Comments about the care plan"

// Elements required by the business document
* intent 1..1 code "Intent of the care plan" "proposal | plan | order | option"
* intent from http://hl7.org/fhir/ValueSet/care-plan-intent (required)
* recordedDate 1..1 dateTime "Recording date by the author or recorder (date of last update)" "Coupled with the business identifier, guarantees that the latest version of the CareSet is shown"
* created 0..1 dateTime "Moment the CareSet was created"
* activity 0..* Reference "Actions planned or performed within this CareSet"
* addresses 0..* Reference "The condition/problem for which this CareSet was set up"
* encounter 0..1 Reference "The encounter referencing this CareSet"
* replaces 0..* Reference "The previous version of the care plan that this one replaces"
* contributor 0..* Reference "The person who adds content to the care plan"
