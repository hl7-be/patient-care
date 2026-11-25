<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CareTeam
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CareTeam</sch:title>
    <sch:rule context="f:CareTeam">
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-created']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-created': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-ext-recorder': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:participant) &gt;= 1">participant: minimum cardinality of 'participant' is 1</sch:assert>
      <sch:assert test="count(f:managingOrganization) &lt;= 1">managingOrganization: maximum cardinality of 'managingOrganization' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CareTeam/f:participant</sch:title>
    <sch:rule context="f:CareTeam/f:participant">
      <sch:assert test="count(f:role) &lt;= 1">role: maximum cardinality of 'role' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
