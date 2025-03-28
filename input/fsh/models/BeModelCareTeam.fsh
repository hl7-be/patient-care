Logical: BeModelCareTeam
Title: "BeModelCareTeam"
Description: "Logical model for Care Teams."

* name 0..1 string "Name of the care team"
* identifier 0..* Identifier "Business identifiers of the care team"
* category 0..* CodeableConcept "Type of team"
* status 0..1 code "Status of the care team"
* subject 0..1 Reference "the subject of care for the care team"
* period 0..1 Period "Time period of the care team"
* participant 0..* BackboneElement "Members of the care team"
  * role 0..1 CodeableConcept "Role of the team member"
  * member 1..1 Reference "Who is involved"
  * period 0..1 Period "Time period of the membership"
* managingOrganization 0..1 Reference "Organization responsible for the care team"
* contact 0..* ContactPoint "Contact details for the care team"
* note 0..* string "Additional notes"