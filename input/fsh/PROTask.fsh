Profile: TICTF_MainTask
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
* for only Reference(Patient) // Paciente relacionado con la tarea
* requester 1..1 MS 
* requester only Reference(TICTF_PractitionerRole) // Solicitante de la tarea
* owner 0..1 
* owner only Reference(TICTF_PractitionerRole) // Responsable de ejecutar la tarea

* output ^slicing.discriminator.type = #value
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open

// 🔹 Aplicar ValueSet en output.type después de definir el slicing
* output.type from TipoOutputTaskVS

// 🔹 Agregar los slices de OBS y DOC con las definiciones correctas
* output contains 
    OBS 0..1 MS and 
    DOC 0..1 MS

* output[OBS].type = TipoOutputTaskCS#Obs 
* output[OBS].value[x] only Reference(TICTF_ObsRespuesta)  

* output[DOC].type = TipoOutputTaskCS#Doc
* output[DOC].value[x] only Reference(DocumentReference) 


Profile: TICTF_SubTask
Parent: Task
Id: tictf-subtask
Title: "TICTF SUBtarea"
Description: "SUBtareas en TeleInterconsulta Transfronteriza"

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
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open

// 🔹 Aplicar ValueSet en input.type después de definir el slicing
* input.type from TipoRespuestaVS

// 🔹 Agregar los slices de OBS y DOC con las definiciones correctas
* input contains 
    OBS 0..1 MS and 
    DOC 0..1 MS

* input[OBS].type = TipoOutputTaskCS#Obs 
* input[OBS].value[x] only Reference(TICTF_ObsRespuesta)  

* input[DOC].type = TipoOutputTaskCS#Doc
* input[DOC].value[x] only Reference(DocumentReference) 

* output 0..* // Respuesta o resultados de la tarea
  * type MS 
* output ^slicing.discriminator.type = #value
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open

// 🔹 Aplicar ValueSet en output.type después de definir el slicing
* output.type from TipoRespuestaVS

// 🔹 Agregar los slices de OBS y DOC con las definiciones correctas
* output contains 
    OBS 0..1 MS and 
    DOC 0..1 MS

* output[OBS].type = TipoOutputTaskCS#Obs 
* output[OBS].value[x] only Reference(TICTF_ObsRespuesta)  

* output[DOC].type = TipoOutputTaskCS#Doc
* output[DOC].value[x] only Reference(DocumentReference) 