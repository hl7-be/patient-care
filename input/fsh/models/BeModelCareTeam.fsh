Logical: BeModelCareTeam
Id: BeModelCareTeam
Title: "BeModelCareTeam"
Description: "Logical model for Care Teams."

* name 0..1 string "Name of the care team"
* identifier 1..* Identifier "Business identifiers of the care team"
* category 0..* CodeableConcept "Type of team"
* category from http://hl7.org/fhir/ValueSet/care-team-category (extensible)
* status 1..1 code "Status of the care team"
* subject 1..1 Reference "the subject of care for the care team"
* period 0..1 Period "Time period of the care team"
* participant 1..* BackboneElement "Members of the care team"
  * role 0..1 CodeableConcept "Role of the team member"
  * member 1..1 Reference "Who is involved"
  * period 0..1 Period "Time period of the membership"
* condition 0..* Reference "The condition/problem for which the care team was assembled"
* managingOrganization 0..1 Reference "Organization responsible for the care team"
* contact 0..* ContactPoint "Contact details for the care team"
* note 0..* string "Additional notes"

// CareSet metadata required by the business document
* recordedDate 1..1 dateTime "Recording date by the author or recorder (date of last update)" "Coupled with the business identifier, guarantees that the latest version of the CareSet is shown"
* author 1..1 Reference "The healthcare professional who takes responsibility for what was recorded"
* created 0..1 dateTime "Moment the CareSet was created"
