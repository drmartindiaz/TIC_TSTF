Profile: TICTF_MainTask
Parent: Task
Id: tictf-maintask
Title: "Tarea PRINCIPAL de Teleconsulta Interconsulta"
Description: "Perfil para la gestión de la tarea PRINCIPAL en teleconsulta asincrónica"

* status 1..1 MS // Estado de la tarea: requested, in-progress, on-hold, completed, etc.
* intent 1..1 MS 
* intent = #order // Intención de la tarea
* basedOn 0..1 
* basedOn only Reference(ServiceRequest) // Relación con la solicitud de interconsulta
* focus 0..1 
* focus only Reference(DiagnosticReport or ImagingStudy or CarePlan) // Datos relacionados con la tarea
* for 1..1 MS 
* for only Reference(Patient) // Paciente relacionado con la tarea
* requester 1..1 MS 
* requester only Reference(TICTF_PractitionerRole) // Solicitante de la tarea
// Aca iría el profesional a mi entender pero deberíamos extender para Institucion solicitante, HIS? como hacemos con Pais?
* owner 0..1 
* owner only Reference(TICTF_PractitionerRole) // Responsable de ejecutar la tarea
// Mismo comentario que para requester
* input 0..* // Información adicional proporcionada (ej. notas o datos complementarios)
  * type MS 
* output 0..* // Respuesta o resultados de la tarea
  * type MS 

Profile: TICTF_SubTask
Parent: Task
Id: tictf-subtask
Title: "SUBtarea Teleconsulta Interconsulta"
Description: "Perfil para la gestión de SUBtareas en teleconsulta asincrónica"

* status 1..1 MS // Estado de la tarea: requested, in-progress, on-hold, completed, etc.
* intent 1..1 MS 
* intent = #order // Intención de la tarea
* basedOn 0..1 
* basedOn only Reference(TICTF_MainTask) // Relación con la tarea principal
* focus 0..1 
* focus only Reference(DiagnosticReport or ImagingStudy or CarePlan) // Datos relacionados con la tarea
* for 1..1 MS 
* for only Reference(Patient) // Paciente relacionado con la tarea
* requester 1..1 MS 
* requester only Reference(TICTF_PractitionerRole) // Solicitante de la tarea
// Aca iría el profesional a mi entender pero deberíamos extender para Institucion solicitante, HIS? como hacemos con Pais?
* owner 0..1 
* owner only Reference(TICTF_PractitionerRole) // Responsable de ejecutar la tarea
// Mismo comentario
* input 0..* // Información adicional proporcionada (ej. notas o datos complementarios)
  * type MS 
* output 0..* // Respuesta o resultados de la tarea
  * type MS 