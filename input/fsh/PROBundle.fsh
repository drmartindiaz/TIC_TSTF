Profile: TICTFDocRta
Parent: Bundle
Id: TICTFDocRta
Title: "Documento de Respuesta de Teleinterconsulta"
Description: "Un Bundle de tipo 'document' que encapsula los recursos de una teleinterconsulta, incluyendo la solicitud, el paciente y la respuesta."

* type = #document (exactly)
* entry 1..*
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    patient 1..1 and
    serviceRequest 1..1 and
    diagnosticReport 1..1

// Primera entrada: Composition (obligatoria)
* entry[composition].fullUrl 1..1
* entry[composition].resource 1..1
* entry[composition].resource only TICTFComposition

// Segunda entrada: Patient
* entry[patient].fullUrl 1..1
* entry[patient].resource 1..1
* entry[patient].resource only TICTFPatient

// Tercera entrada: ServiceRequest
* entry[serviceRequest].fullUrl 1..1
* entry[serviceRequest].resource 1..1
* entry[serviceRequest].resource only TICTFServiceRequest

// Cuarta entrada: DiagnosticReport
* entry[diagnosticReport].fullUrl 1..1
* entry[diagnosticReport].resource 1..1
* entry[diagnosticReport].resource only TICTFDiagRep

// Definición del perfil para la Composition (sin cambios, está correcto)
Profile: TICTFComposition
Parent: Composition
Id: TICTFComposition
Title: "Composición de Documento de Teleinterconsulta"
Description: "Una Composition que sirve como índice para el Bundle de Teleinterconsulta."

* status = #final (exactly)
* type = http://loinc.org#81249-5 "Teleconsultation note" (exactly)
* subject 1..1
* subject only Reference(TICTFPatient)
* author 1..1
* author only Reference(TICTFPractitionerRole)
* title 1..1
* title = "Informe de Teleinterconsulta Transfronteriza"
* section 1..* MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    Paciente 1..1 and
    Solicitud 1..1 and
    Respuesta 1..1

* section[Paciente].title = "Datos del Paciente"
* section[Paciente].code = http://loinc.org#60592-7 "Patient summary"
* section[Paciente].entry 1..1
* section[Paciente].entry only Reference(TICTFPatient)

* section[Solicitud].title = "Solicitud de Interconsulta"
* section[Solicitud].code = http://loinc.org#81249-5 "Teleconsultation note"
* section[Solicitud].entry 1..1
* section[Solicitud].entry only Reference(TICTFServiceRequest)

* section[Respuesta].title = "Respuesta de la Interconsulta"
* section[Respuesta].code = http://snomed.info/sct#722421008 "Report of teleconsultation (record artifact)" (exactly)
* section[Respuesta].entry 1..1
* section[Respuesta].entry only Reference(TICTFDiagRep)