# Artifacts Summary - HL7 Belgium Patient Care v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [BeModelCarePlan](StructureDefinition-BeModelCarePlan.md) | Logical model for Care Plan. |
| [BeModelCareTeam](StructureDefinition-BeModelCareTeam.md) | Logical model for Care Teams. |
| [BeModelGoal](StructureDefinition-BeModelGoal.md) | Logical model for Goal. |
| [BeModelTask](StructureDefinition-BeModelTask.md) | Logical model for Task. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BECarePlan](StructureDefinition-be-care-plan.md) | This is the profile for Care Plan. A Care Plan contains the activities planned and/or performed by a care team to deliver care for a particular patient, usually targeting a specific goal or condition - or a set thereof. |
| [BeCareTeam](StructureDefinition-be-careteam.md) | This is the Belgian profile for care team. A care team defines the people and roles organized around a patient’s care activities planned. It may also imply additional aspects such as access to information etc. |
| [BeGoal](StructureDefinition-be-goal.md) | This is the profile for Goal. |
| [BeTask](StructureDefinition-be-task.md) | This is the profile for Task. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [Example Patient](Patient-patient1.md) |

