Profile: BeCareTeam
Parent: CareTeam
Id: be-careteam
Title: "BeCareTeam"
Description: "This is the Belgian profile for care team. A care team defines the people and roles organized around a patient's care activities planned. It may also imply additional aspects such as access to information etc."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-01-18T09:02:46+00:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* ^jurisdiction = $m49.htm#056
* ^jurisdiction.text = "Belgium"


* identifier MS
* status MS
* category MS
* name MS
* subject only Reference(BePatient or Group)
* period MS
* category MS
* category from CareTeamCategory (example)

* participant MS
* participant.member only Reference(BePatient or BePractitioner or BeOrganization or BePractitionerRole or BeCareTeam or RelatedPerson)
* participant.onBehalfOf only Reference(BeOrganization)

* managingOrganization only Reference(BeOrganization)
* telecom MS
* note MS