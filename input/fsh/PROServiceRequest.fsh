Profile: TICTFServiceRquest
Parent: ServiceRequest
Id: TICTFServiceRequest
Title: "TICTF Solicitud TeleInterconsulta Transfronteriza"
Description: "Solicitud TeleInterconsulta Transfronteriza"
* identifier 1..1 
* identifier ^short = "Identiicador único de la TICTF - nanoID"
* status 1..1 
* intent 1..1 MS // Intención de la solicitud
* subject 1..1 
* subject only Reference(TICTFPatient) // Paciente relacionado con la interconsulta
* code 1..1 
* code = SCT#868184008 //|Telemedicine consultation with provider (procedure)|
* orderDetail 1..1 MS 
* orderDetail from PracticeSettingCodeValueSet (example)
* orderDetail ^short = "Especialidad solicitada"
* requester  1..1 MS 
* requester only Reference(TICTFPractitionerRole) 
* requester ^short = "Solicitante de la interconsulta"
* performer  0..1 
* performer  only Reference(TICTFPractitionerRole) // Responsable de la respuesta
* performer ^short = "Responsable de la respuesta"
* reasonReference 1..* MS 
* reasonReference only Reference(TICTFObsSolicitud) 
* reasonReference ^short = "Razón de la consulta o diagnóstico preliminar"
* supportingInfo 1..*
//* supportingInfo ^slicing.discriminator.type = #profile
//* supportingInfo ^slicing.discriminator.path = "reference"

//* supportingInfo ^slicing.discriminator.type = #profile
//* supportingInfo ^slicing.discriminator.path = "$this"

* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slices para Consentimiento Informado, Resumen de Historia Clínica y Estudios"

* supportingInfo contains
    ConsentimientoInformado 1..1 and
    ResumenHistoriaClinicaIPS 0..1 and
    InformesEstudios 0..* and
    OtrosDocumentos 0..*
    //ObservacionesNarrativas 0..*

* supportingInfo[ConsentimientoInformado] only Reference(Consent)
* supportingInfo[ConsentimientoInformado].reference 1..1

//* supportingInfo[ResumenHistoriaClinicaIPS] only Reference(LAC_Bundle) //no resuelve URL de lacpass.racsel.org para referenciar Bundle
* supportingInfo[ResumenHistoriaClinicaIPS] only Reference(Bundle)
* supportingInfo[ResumenHistoriaClinicaIPS].reference 1..1

* supportingInfo[InformesEstudios] only Reference(DiagnosticReport)
* supportingInfo[InformesEstudios].reference 1..1

* supportingInfo[OtrosDocumentos] only Reference(DocumentReference)
* supportingInfo[OtrosDocumentos].reference 1..1

//* supportingInfo[ObservacionesNarrativas] only Reference(TICTFObsGral)
//* supportingInfo[ObservacionesNarrativas].reference 1..1