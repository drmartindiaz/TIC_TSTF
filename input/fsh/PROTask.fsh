Profile: TICTFMainTask
Parent: Task
Id: tictf-maintask
Title: "TICTF Tarea PRINCIPAL"
Description: "Tarea PRINCIPAL en TeleInterconsulta Transfronteriza"

* status 1..1 MS // Estado de la tarea: requested, in-progress, on-hold, completed, etc.
* intent 1..1 MS 
* intent = #order // Intención de la tarea
* basedOn 0..1 
* basedOn only Reference(ServiceRequest) // Relación con la solicitud de interconsulta
* focus 0..1 
* focus only Reference(DiagnosticReport or ImagingStudy or CarePlan) // Datos relacionados con la tarea
* for 1..1 MS 
* for only Reference(TICTFPatient) // Paciente relacionado con la tarea
* requester 1..1 MS 
* requester only Reference(TICTFPractitionerRole) // Solicitante de la tarea
* owner 0..1 
* owner only Reference(TICTFPractitionerRole) // Responsable de ejecutar la tarea
* output 0..* // Respuesta de la tarea PRINCIPAL, contiene la respuesta final a la interconsulta
  * type from TipoTaskVS
  * value[x] only Reference(TICTFObsRespuesta) //Solo Bundle


Profile: TICTFSubTask
Parent: Task
Id: tictf-subtask
Title: "TICTF SUBtarea"
Description: "SUBtareas en TeleInterconsulta Transfronteriza"

* status 1..1 MS // Estado de la tarea: requested, in-progress, on-hold, completed, etc.
* intent 1..1 MS 
* intent = #order // Intención de la tarea
* basedOn 0..1 
* basedOn only Reference(TICTFMainTask) // Relación con la tarea principal
* for 1..1 MS 
* for only Reference(TICTFPatient) // Paciente relacionado con la tarea
* requester 1..1 MS 
* requester only Reference(TICTFPractitionerRole) // Solicitante de la tarea
// Aca iría el profesional a mi entender pero deberíamos extender para Institucion solicitante, HIS? como hacemos con Pais?
* owner 0..1 
* owner only Reference(TICTFPractitionerRole) // Responsable de ejecutar la tarea

* input 1..* 
* input ^short = "Información adicional solicitada (ej. notas o datos complementarios)"
  * type from TipoTaskVS
  * value[x] only Reference(TICTFObsRespuesta or DocumentReference)
* output 0..* 
* output ^short = "Respuesta de la SUBtarea, contiene la respuesta al requerimiento de información adicional"
  * type from TipoTaskVS
  * value[x] only Reference(TICTFObsRespuesta or DocumentReference)