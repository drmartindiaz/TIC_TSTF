Profile: TICTF_Task
Parent: Task
Id: tictf-task
Title: "Teleconsulta Interconsulta Task"
Description: "Perfil para la gestión de tareas en teleconsulta asincrónica"

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
* requester only Reference(Practitioner or Organization) // Solicitante de la tarea
* owner 0..1 
* owner only Reference(Practitioner or Organization) // Responsable de ejecutar la tarea
* input 0..* // Información adicional proporcionada (ej. notas o datos complementarios)
  * type MS 
* output 0..* // Respuesta o resultados de la tarea
  * type MS 
