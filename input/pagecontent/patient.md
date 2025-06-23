# Recurso: Patient

El recurso `Patient` utilizado en esta guía está basado en el estándar HL7 FHIR R4 y representa a la persona que accede al servicio de teleconsulta. Este perfil adopta estructuras y extensiones compatibles con las definiciones propuestas por la Guía de Implementación de LACPass, a fin de facilitar el intercambio transfronterizo de información en contextos clínicos.

**Consideraciones:**
- Se recomienda utilizar identificadores estandarizados con sistema OID o UUID conforme a LACPass.
- Se sugiere incluir la extensión `patient-mothersMaidenName` en caso de que el país participante lo requiera.
- El uso de `identifier` deberá permitir múltiples sistemas nacionales de identificación.

**Referencia:** [LACPass Patient Profile](https://lacpass.hl7.lat/artifacts/StructureDefinition-patient-lacpass.html)
