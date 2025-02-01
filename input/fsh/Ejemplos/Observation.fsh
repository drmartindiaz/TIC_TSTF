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
* code.coding.code = #11488-4
* code.coding.display = "Consult note"
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
* code.coding.display = "Progress note"
* subject = Reference(Paciente1)
* valueString = "El paciente ha respondido bien al tratamiento inicial, pero sigue en observación."