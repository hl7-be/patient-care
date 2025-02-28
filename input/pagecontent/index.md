This is the HL7 Belgium FHIR Implementation Guide for Patient Care, prepared by the Patient Care Work Group.

### Scope 
The resources in this Implementation Guide are contextualizations of the FHIR resources and are agnostic of any specific use case.  
Therefore they provide guidance and minimal constraints, to provide a generic basis for interoperability while allowing the resources to be profiled with additional details in different topics.    
Notably, resources like [BeCarePlan](StructureDefinition-be-care-plan.html), [BeTask](StructureDefinition-be-task.html), and to some extent CareTeam, are multi-purpose, and are expected to have different profiles for different types of use cases.

### Usage
These resources are expected to be further profiled by different use cases, in the different working groups.
By providing a minimal contextualization, these resources can be used *as is*, if a more specific national profile is not used. Implementers are invite to always use the most specific profile that matches their scope. When there is none, the community is invited to discuss and promote a standard profile. Implementers may use these generc profiles in situations where no profile exists.


### Intellectual Propery considerations
{% include ip-statements.xhtml %}

### Dependencies

{% include dependency-table-short.xhtml %}

{% include globals-table.xhtml %}
