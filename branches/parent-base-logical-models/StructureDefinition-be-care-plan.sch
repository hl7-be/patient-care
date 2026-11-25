<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CarePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CarePlan</sch:title>
    <sch:rule context="f:CarePlan">
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date']) &gt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date']) &lt;= 1">extension with URL = 'https://www.ehealth.fgov.be/standards/fhir/patient-care/StructureDefinition/be-ext-careset-recorded-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:partOf) &lt;= 1">partOf: maximum cardinality of 'partOf' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:author) &gt;= 1">author: minimum cardinality of 'author' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
