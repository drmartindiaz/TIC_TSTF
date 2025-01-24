Profile: TICTF_ServiceRquest
Parent: ServiceRequest
Id: TICTFServiceRequest
Title: "Service Request de inicio para Tele IncerConsulta TransFronteriza"
Description: "SeviceRequest para TICTF"
* identifier 1..1 
* identifier ^short = "Identiicador único de la TICTF - nanoID"
* status 1..1 
* intent 1..1 MS // Intención de la solicitud
* subject 1..1 
* subject only Reference(Patient) // Paciente relacionado con la interconsulta
* requester  1..1 MS 
* requester only Reference(TICTF_PractitionerRole) // Solicitante de la interconsulta
* performer  0..1 
* performer  only Reference(TICTF_PractitionerRole) // Responsable de la respuesta
* reasonReference 1..1 MS 
* reasonReference only Reference(TICTF_Observation) // Razón de la consulta o diagnóstico preliminar
* supportingInfo 0..* 
* supportingInfo only Reference(DiagnosticReport or ImagingStudy) // Información adicional (ej. estudios diagnósticos)
//* extension contains http://racsel.org/TIC-TSTF/StructureDefinition/pais-origen named PaisOrigen  1..1

