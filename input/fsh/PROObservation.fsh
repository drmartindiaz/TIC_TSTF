Profile: TICTFObsGral
Parent: Observation
Id: TICTFObsGral
Title: "TICTF Nota Narrativa General"
Description: "Observation para nota narrativa general"
* basedOn 1..1 
* basedOn ^short = "Solicitud de TICTF de referencia para esta nota narrativa"
* basedOn only Reference(TICTFServiceRequest)
* status = #registered 
* code.coding   
  * system = LOINC
  * code = #11506-3
  * display = "Progress note"
* subject 1..1  
* subject ^short = "Pacente sujeto de esta nota narrativa"
* subject only Reference(Patient)
* valueString 1..1  
* valueString ^short = "Contenido de la Nota Narrativa" //Narrativa de la solicitud de interconsulta

Profile: TICTFObsSolicitud
Parent: Observation
Id: TICTFObsSolicitud
Title: "TICTF Narrativa de Solicitud"
Description: "Observation para narrativa de la solicitud de IC transfronteriza"
* basedOn 1..1  
* basedOn ^short = "Solicitud de TICTF de referencia para esta nota narrativa"
* basedOn only Reference(TICTFServiceRequest)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #11487-6
  * display = "Consultation request (narrative)"
* subject 1..1  
* subject ^short = "Pacente sujeto de esta nota narrativa"
* subject only Reference(Patient)
* valueString 1..1  
* valueString ^short = "Contenido de la Nota Narrativa" //Narrativa de la solicitud de interconsulta

Profile: TICTFObsRespuesta
Parent: Observation
Id: TICTFObsRespuesta
Title: "TICTF Narrativa de Respuesta"
Description: "Observation para narrativa de la respuesta de IC transfronteriza"
// * basedOn 1..1  
// * basedOn ^short = "Tarea de TICTF de referencia para esta nota narrativa"
// * basedOn only Reference(TICTFMainTask)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #11488-4
  * display = "Consult note"
* subject 1..1  
* subject ^short = "Pacente sujeto de esta nota narrativa"
* subject only Reference(Patient)
* valueString 1..1  
* valueString ^short = "Contenido de la Nota Narrativa" //Narrativa de la solicitud de interconsulta


// Instancia de Observación para la razón de la consulta
Instance: TICTFObsSolicitud1
InstanceOf: TICTFObsSolicitud
Title: "Narrativa de la Solicitud de Interconsulta"
Description: "Narrativa de la solicitud de interconsulta transfronteriza"
* basedOn = Reference(TICTFServiceRequest1)
* status = #registered
* code.coding.system = "http://loinc.org"
* code.coding.code = #11487-6
// * code.coding.display = "Consultation request (narrative)"
* subject = Reference(Paciente1)
* valueString = "El paciente presenta síntomas de dificultad respiratoria desde hace dos semanas. Se requiere evaluación especializada."

// Instancia de Observación para la respuesta de la consulta
Instance: TICTFObsRespuesta1
InstanceOf: TICTFObsRespuesta
Title: "Narrativa de la Respuesta a la Interconsulta"
Description: "Narrativa de la respuesta a la solicitud de interconsulta transfronteriza"
* status = #registered
* code.coding.system = "http://loinc.org"
<<<<<<< HEAD
* code.coding.code = #34764-0
// * code.coding.display = "Consultation note (narrative)"
=======
* code.coding.code = #11488-4
* code.coding.display = "Consult note"
>>>>>>> 944f50d13881b39066fd22f9234cefe24fd608e1
* subject = Reference(Paciente1)
* valueString = "Se recomienda realizar pruebas complementarias para descartar infección pulmonar."

// Instancia de Observación General
Instance: TICTFObsGral1
InstanceOf: TICTFObsGral
Title: "Nota Narrativa General"
Description: "Nota narrativa general sobre el estado del paciente"
* basedOn = Reference(TICTFServiceRequest1)
* status = #registered
* code.coding.system = "http://loinc.org"
* code.coding.code = #11506-3
<<<<<<< HEAD
// * code.coding.display = "Provider-unspecified note (narrative)"
=======
* code.coding.display = "Progress note"
>>>>>>> 944f50d13881b39066fd22f9234cefe24fd608e1
* subject = Reference(Paciente1)
* valueString = "El paciente ha respondido bien al tratamiento inicial, pero sigue en observación."