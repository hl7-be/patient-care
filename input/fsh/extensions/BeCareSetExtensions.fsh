// Reusable CareSet metadata extensions: the elements the CareSet business
// documents require that have no native R4 equivalent and no existing be-core
// extension.
//
// Author is covered by the be-core extension BeExtRecorder (be-ext-recorder),
// so no local extension is defined for it - the profiles reference the be-core
// one directly.
//
// Created is native on CarePlan (CarePlan.created 0..1 dateTime), so
// BeCareSetCreated is only needed for CareTeam.

Extension: BeCareSetRecordedDate
Id: be-ext-careset-recorded-date
Title: "CareSet RecordedDate"
Description: "Recording date by the Author or Recorder, that is the date of the last update. Coupled with the Business Identifier it enables CareSet history management, guaranteeing access to the latest version of the content."
Context: CarePlan, CareTeam
* value[x] only dateTime
* value[x] 1..1

Extension: BeCareSetCreated
Id: be-ext-careset-created
Title: "CareSet Created"
Description: "The moment the CareSet was first created."
Context: CareTeam
* value[x] only dateTime
* value[x] 1..1
