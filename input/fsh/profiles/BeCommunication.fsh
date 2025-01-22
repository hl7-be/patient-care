Profile: BeCommunication
Parent: Communication
Id: be-communication
Title: "Communication"

Description: """Profile for the Communication resource, as it is used in Belgium."""

* identifier MS
* identifier ^short = "Unique identifier for this communication"
* identifier ^definition = "Unique identifier for this communication. Unlike the resource's _id, this identifier must resolve across systems."

* status ^short = "Status of this communication: preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"
* category MS
* priority MS

* subject only Reference(BePatient or Group)
* subject MS
* subject ^short = "Subject of the communication - typically Patient"

* topic MS
* topic ^short = "Topic of the communication"

* sent MS
* sent ^short = "Date and Time that the communication has been sent"
* recipient only Reference(Device or BePatient or BePractitioner or BePractitionerRole or RelatedPerson or Group or CareTeam or HealthcareService or BeOrganization)
* recipient MS
* recipient ^short = "Intended receiver of the communication"
* recipient ^definition = "This field indicates the intended receiver of the communication. For messages, this SHALL be explicitly indicated, even when it can be assumed e.g. to be the patient's Care Team."
* sender only Reference(Device or BePatient or BePractitioner or BePractitionerRole or RelatedPerson or HealthcareService or BeOrganization)
* sender MS
* sender ^short = "The actual sender of the communication"

//* sender ^definition = "This field contains the sender of the communication. If the communication is entered by a nurse on behalf of a physician, this shall refer to the nurse."




* payload MS
* payload ^short = "The content of the communication or diary note. Text (up to 320 characters), Attachments (base-64 encoded) or References."
* payload ^definition = "This content can be free Text (up to 320 characters), or Attachments (e.g. a photo) or References to other resources (e.g. a Binary resource containing a photo)."
* payload ^comment = "For systems that are intending to be backwards compatible with KMEHR, only the text is allowed."
* payload.content[x] ^short = "Communication content"
* payload.content[x] ^definition = "A communicated content (or for multi-part communications, one portion of the communication). This can be a string, an attachment, or a reference to a resource."
* payload.contentString only string
* payload.contentString ^sliceName = "contentString"
* payload.contentString ^comment = "NOTE: The string element is valid only for FHIR 4.0.1, and it will likely be replaced by another data type (Annotation) in future releases of FHIR and of this profile."

