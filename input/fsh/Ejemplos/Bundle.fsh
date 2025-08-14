// Ejemplo del Bundle de Documento de Respuesta de Teleinterconsulta
Instance: TICTFDocRta1
InstanceOf: TICTFDocRta
Title: "Documento de Respuesta de Teleinterconsulta Ejemplo"
Description: "Ejemplo completo de un documento de respuesta que incluye la composición, paciente, solicitud y respuesta de una teleinterconsulta transfronteriza"

* id = "TICTFDocRta1"
* type = #document
* timestamp = "2024-01-15T10:30:00Z"
* identifier.system = "http://HIS.PaisDeOrigen.gov/tictf/bundle"
* identifier.value = "DOC-TICTF-2024-001"

// Primera entrada: Composition (índice del documento)
* entry[composition].fullUrl = "http://HIS.PaisDeOrigen.gov/tictf/Composition/TICTFComposition1"
* entry[composition].resource = TICTFComposition1

// Segunda entrada: Paciente
* entry[patient].fullUrl = "http://HIS.PaisDeOrigen.gov/tictf/Patient/Paciente1"
* entry[patient].resource = Paciente1

// Tercera entrada: Solicitud de Interconsulta
* entry[serviceRequest].fullUrl = "http://HIS.PaisDeOrigen.gov/tictf/ServiceRequest/TICTFServiceRequest1"
* entry[serviceRequest].resource = TICTFServiceRequest1

// Cuarta entrada: Respuesta Diagnóstica
* entry[diagnosticReport].fullUrl = "http://HIS.PaisDeRespuesta.gov/tictf/DiagnosticReport/TICTFDiagRep1"
* entry[diagnosticReport].resource = TICTFDiagRep1

// Ejemplo de la Composition que sirve como índice
Instance: TICTFComposition1
InstanceOf: TICTFComposition
Title: "Composición del Documento de Teleinterconsulta"
Description: "Composition que organiza el contenido del documento de respuesta de teleinterconsulta"

* id = "TICTFComposition1"
* status = #final
* type = http://loinc.org#81249-5 "Teleconsultation note"
* subject = Reference(Paciente1)
* author = Reference(TICTFPractitionerRole2) // El profesional que responde
* date = "2024-01-15T10:30:00Z"
* title = "Informe de Teleinterconsulta Transfronteriza"
* custodian = Reference(TICTFOrganization2) // Organización respondedora

// Sección del Paciente
* section[Paciente].title = "Datos del Paciente"
* section[Paciente].code = http://loinc.org#60592-7 "Patient summary"
* section[Paciente].text.status = #generated
* section[Paciente].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Paciente: Juan Domingo Perez, masculino, nacido el 15/05/1980. Identificación nacional: CL/18922652-7</p></div>"
* section[Paciente].entry = Reference(Paciente1)

// Sección de la Solicitud
* section[Solicitud].title = "Solicitud de Interconsulta"
* section[Solicitud].code = http://loinc.org#81249-5 "Teleconsultation note"
* section[Solicitud].text.status = #generated
* section[Solicitud].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Solicitud de interconsulta especializada para evaluación de dificultad respiratoria. Especialidad solicitada: Neumología. Solicitante: Dra. Ana Gomez del Hospital Central.</p></div>"
* section[Solicitud].entry = Reference(TICTFServiceRequest1)

// Sección de la Respuesta
* section[Respuesta].title = "Respuesta de la Interconsulta"
* section[Respuesta].code = http://snomed.info/sct#722421008 "Report of teleconsultation (record artifact)"
* section[Respuesta].text.status = #generated
* section[Respuesta].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Respuesta del especialista: Dr. Luis Fernandez. Recomendación: Realizar pruebas complementarias para descartar infección pulmonar. Estado: Evaluación completada.</p></div>"
* section[Respuesta].entry = Reference(TICTFDiagRep1)

// Ejemplo del DiagnosticReport de respuesta (necesario para completar el ejemplo)
Instance: TICTFDiagRep1
InstanceOf: TICTFDiagRep
Title: "Informe Diagnóstico de Respuesta TICTF"
Description: "Informe diagnóstico como respuesta a la solicitud de teleinterconsulta"

* id = "TICTFDiagRep1"
* identifier.system = "http://HIS.PaisDeDestino.gov/tictf/diagnosticreport"
* identifier.value = "DR-TICTF-2024-001"
* basedOn = Reference(TICTFServiceRequest1) // Basado en la solicitud original
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#SP "Specialist"
* code = http://snomed.info/sct#722421008 "Report of teleconsultation (record artifact)"
* subject = Reference(Paciente1)
* effectiveDateTime = "2024-01-15T10:30:00Z"
* issued = "2024-01-15T10:30:00Z"
* performer = Reference(TICTFPractitionerRole2) // Profesional que genera la respuesta
* resultsInterpreter = Reference(TICTFPractitionerRole2)
* conclusion = "Basado en la evaluación clínica y los síntomas descritos, se recomienda realizar las siguientes pruebas complementarias: Radiografía de tórax PA y lateral, Hemograma completo con VSG, PCR. Considerar cultivo de esputo si persiste la sintomatología. Seguimiento en 7 días."
* conclusionCode = http://snomed.info/sct#182840001 "Drug treatment"

// Referencias a las observaciones de respuesta
* result[0] = Reference(TICTFObsRespuesta1)

// Opcional: Referencia a estudios de imágenes si los hay
* imagingStudy = Reference(ImagingStudy1)