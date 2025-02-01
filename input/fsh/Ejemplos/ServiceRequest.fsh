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

// Especildiad solicitada
* orderDetail = SCT#418112009

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