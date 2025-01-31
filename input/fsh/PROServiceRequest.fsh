Profile: TICTF_ServiceRquest
Parent: ServiceRequest
Id: TICTFServiceRequest
Title: "TICTF Solicitud Solicitud inicial"
Description: "Solicitud Solicitud inicial de TeleInterconsulta Transfronteriza"
* identifier 1..1 
* identifier ^short = "Identiicador único de la TICTF - nanoID"
* status 1..1 
* intent 1..1 MS // Intención de la solicitud
* subject 1..1 
* subject only Reference(Patient) // Paciente relacionado con la interconsulta
* code 1..1 
* code = #868184008 //|Telemedicine consultation with provider (procedure)|
* requester  1..1 MS 
* requester only Reference(TICTF_PractitionerRole) // Solicitante de la interconsulta
* performer  0..1 
* performer  only Reference(TICTF_PractitionerRole) // Responsable de la respuesta
* reasonReference 1..* MS 
* reasonReference only Reference(TICTF_ObsSolicitud) // Razón de la consulta o diagnóstico preliminar

* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "reference"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slices para Consentimiento Informado, Resumen de Historia Clínica y Otros Estudios"

* supportingInfo contains
    ConsentimientoInformado 1..1 and
    ResumenDeHistoriaClinica 0..1 and
    OtrosEstudios 0..*

* supportingInfo[ConsentimientoInformado] only Reference(Consent)
* supportingInfo[ConsentimientoInformado].reference 1..1

* supportingInfo[ResumenDeHistoriaClinica] only Reference(DocumentReference or Composition)
* supportingInfo[ResumenDeHistoriaClinica].reference 1..1

* supportingInfo[OtrosEstudios] only Reference(TICTF_ObsGral or DiagnosticReport)
* supportingInfo[OtrosEstudios].reference 1..1
// * supportingInfo 0..* 
// * supportingInfo only Reference(DiagnosticReport or ImagingStudy) // Información adicional (ej. estudios diagnósticos)


