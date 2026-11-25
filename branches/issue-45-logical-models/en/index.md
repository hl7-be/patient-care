# IG Home Page - HL7 Belgium Patient Care v1.1.0

## IG Home Page

This is the HL7 Belgium FHIR Implementation Guide for Patient Care, prepared by the Patient Care Work Group.

### Scope

The resources in this Implementation Guide are contextualizations of the FHIR resources and are agnostic of any specific use case.
 Therefore they provide guidance and minimal constraints, to provide a generic basis for interoperability while allowing the resources to be profiled with additional details in different topics. 
 Notably, resources like [BeCarePlan](StructureDefinition-be-care-plan.md), [BeTask](StructureDefinition-be-task.md), and to some extent CareTeam, are multi-purpose, and are expected to have different profiles for different types of use cases.

### Usage

These resources are expected to be further profiled by different use cases, in the different working groups. By providing a minimal contextualization, these resources can be used **as is**, if a more specific national profile is not used. Implementers are invite to always use the most specific profile that matches their scope. When there is none, the community is invited to discuss and promote a standard profile. Implementers may use these generc profiles in situations where no profile exists.

### Intellectual Propery considerations

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.0.2/CodeSystem-ISO3166Part1.html): [BeCarePlan](StructureDefinition-be-care-plan.md), [BeCareTeam](StructureDefinition-be-careteam.md)... Show 7 more, [BeGoal](StructureDefinition-be-goal.md), [BeModelCarePlan](StructureDefinition-BeModelCarePlan.md), [BeModelCareTeam](StructureDefinition-BeModelCareTeam.md), [BeModelGoal](StructureDefinition-BeModelGoal.md), [BeModelTask](StructureDefinition-BeModelTask.md), [BePatientCare](index.md) and [BeTask](StructureDefinition-be-task.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.0.2/CodeSystem-v3-loinc.html): [BeCareTeam](StructureDefinition-be-careteam.md) and [BeModelCareTeam](StructureDefinition-BeModelCareTeam.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [BeModelCarePlan](StructureDefinition-BeModelCarePlan.md)


### Dependencies

*There are no Global profiles defined*

