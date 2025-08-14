Instance: TICTFMainTask1
InstanceOf: TICTFMainTask
Title: "Tarea Principal de TeleInterconsulta en progreso"
Description: "Ejemplo de una tarea principal en una TeleInterconsulta Transfronteriza recibida y en progreso."

* status = #in-progress
* intent = #order
* basedOn = Reference(TICTFServiceRequest1) // Referencia a la solicitud de interconsulta
* focus = Reference(DiagnosticReport1) // Un informe diagnóstico como foco de la tarea
* for = Reference(Paciente1) // Paciente involucrado en la interconsulta
* requester = Reference(TICTFPractitionerRole1) // Solicitante de la tarea
* owner = Reference(TICTFPractitionerRole2) // Responsable de la ejecución de la tarea

Instance: TICTFMainTask2
InstanceOf: TICTFMainTask
Title: "Tarea Principal de TeleInterconsulta Completada"
Description: "Ejemplo de una tarea principal en una TeleInterconsulta Transfronteriza completada como respuesta."

* status = #completed
* intent = #order
* basedOn = Reference(TICTFServiceRequest1) // Referencia a la solicitud de interconsulta
* focus = Reference(DiagnosticReport1) // Un informe diagnóstico como foco de la tarea
* for = Reference(Paciente1) // Paciente involucrado en la interconsulta
* requester = Reference(TICTFPractitionerRole1) // Solicitante de la tarea
* owner = Reference(TICTFPractitionerRole2) // Responsable de la ejecución de la tarea
* output.type = TipoTaskCS#Doc
* output.valueReference = Reference(TICTFObsRespuesta1) // Observacion narrativa generada como resultado

Instance: TICTFSubTask1
InstanceOf: TICTFSubTask
Title: "Subtarea de TeleInterconsulta"
Description: "Ejemplo de una subtarea dentro de una TeleInterconsulta Transfronteriza."

* status = #completed
* intent = #order
* basedOn = Reference(TICTFMainTask1) // Relación con la tarea principal
* focus = Reference(ImagingStudy1) // Estudio de imágenes relacionado
* for = Reference(Paciente1) // Paciente involucrado en la interconsulta
* requester = Reference(TICTFPractitionerRole1) // Solicitante de la subtarea
* owner = Reference(TICTFPractitionerRole3) // Responsable de ejecutar la subtarea
* input.type = TipoTaskCS#Obs
* input.valueReference = Reference(DocumentReference2) // Documento clínico de entrada
* output.type = TipoTaskCS#Rep
* output.valueReference = Reference(TICTFObsRespuesta1) // Respuesta generada por la subtarea

