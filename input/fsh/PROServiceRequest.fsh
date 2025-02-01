Profile: TICTFServiceRquest
Parent: ServiceRequest
Id: TICTFServiceRequest
<<<<<<< HEAD
Title: "TICTF Solicitud"
Description: "Solicitud de TeleInterconsulta Transfronteriza"
=======
Title: "TICTF Solicitud TeleInterconsulta Transfronteriza"
Description: "Solicitud TeleInterconsulta Transfronteriza"
>>>>>>> 944f50d13881b39066fd22f9234cefe24fd608e1
* identifier 1..1 
* identifier ^short = "Identiicador único de la TICTF - nanoID"
* status 1..1 
* intent 1..1 MS // Intención de la solicitud
* subject 1..1 
* subject only Reference(Patient) // Paciente relacionado con la interconsulta
* code 1..1 
* code = SCT#868184008 //|Telemedicine consultation with provider (procedure)|
* requester  1..1 MS 
* requester only Reference(TICTFPractitionerRole) // Solicitante de la interconsulta
* performer  0..1 
* performer  only Reference(TICTFPractitionerRole) // Responsable de la respuesta
* reasonReference 1..* MS 
* reasonReference only Reference(TICTFObsSolicitud) // Razón de la consulta o diagnóstico preliminar
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

* supportingInfo[ResumenHistoriaClinicaIPS] only Reference(Composition) //o debería ser ref a bundle IPS?
* supportingInfo[ResumenHistoriaClinicaIPS].reference 1..1

* supportingInfo[InformesEstudios] only Reference(DiagnosticReport)
* supportingInfo[InformesEstudios].reference 1..1

* supportingInfo[OtrosDocumentos] only Reference(DocumentReference)
* supportingInfo[OtrosDocumentos].reference 1..1

//* supportingInfo[ObservacionesNarrativas] only Reference(TICTFObsGral)
//* supportingInfo[ObservacionesNarrativas].reference 1..1

Instance: TICTFServiceRequest1
InstanceOf: TICTFServiceRequest
Title: "Ejemplo de Solicitud Inicial de TeleInterconsulta Transfronteriza"
Description: "Ejemplo de una solicitud de interconsulta transfronteriza en FHIR usando el perfil TICTFServiceRequest."

// Identificador único de la solicitud con nanoID
* identifier.use = #official
* identifier.system = "http://HIS.PaisDeOrigen.gov/tictf/servicerequest"
* identifier.value = "PPBxmMR4EC-PBQzXpEBG7"

// Estado e intención de la solicitud
* status = #active
* intent = #order

// Paciente relacionado con la interconsulta
* subject = Reference(Paciente1)

// Código fijo para teleconsulta
* code = SCT#868184008 // Telemedicine consultation with provider

// Solicitante y responsable de la interconsulta
* requester = Reference(TICTFPractitionerRole1)
* performer = Reference(TICTFPractitionerRole2)

// Razón de la solicitud (puede haber más de una)
* reasonReference = Reference(TICTFObsSolicitud1)

// Información de apoyo con slicing definido en el perfil
* supportingInfo[0] = Reference(Consent1)
* supportingInfo[+] = Reference(DocumentReference1)
* supportingInfo[+] = Reference(DiagnosticReport1)
* supportingInfo[+] = Reference(TICTFObsGral1)

Instance: Consent1
InstanceOf: Consent
Title: "Consentimiento Informado"
Description: "Consentimiento del paciente para la interconsulta"
* status = #active
* scope = #patient-privacy
* patient = Reference(Paciente1)
* category = #59284-0

Instance: DocumentReference1
InstanceOf: DocumentReference
Title: "Resumen de Historia Clínica"
Description: "Documento con resumen clínico del paciente"
* status = #current
* type.text = "Resumen Clínico"
* subject = Reference(Paciente1)
* content.attachment.url = "http://HIS.PaisDeOrigen.gov/tictf/DocumentReference1"

Instance: DiagnosticReport1
InstanceOf: DiagnosticReport
Title: "Estudio Diagnóstico"
Description: "Resultados de estudios de diagnóstico"
* status = #final
* code.text = "Radiografía de tórax"
* subject = Reference(Paciente1)

// Instancia de Paciente
Instance: Paciente1
InstanceOf: Patient
Title: "Paciente Ejemplo"
Description: "Ejemplo de paciente para la solicitud de interconsulta"
* id = "Paciente1"
* name.family = "Perez"
* name.given[0] = "Juan"
* gender = #male
* birthDate = "1980-05-15"