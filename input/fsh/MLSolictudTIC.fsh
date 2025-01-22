Logical: MLSolicitudTICTF
Parent: Base
Id: SolicitudTICTF
Title: "Solicitud TICTF"
Description: "Nodelo Lógico para la solicitud de un Tele Interconsulta Transfornteriza"
* identificador 1..1 Identifier "Identificador unico de la solicitud"
* estado 1..1 CodeableConcept "Estado de la solicitud"
* paisOrigen 1..1 CodeableConcept "País que origina la TITF"
* paciente 1..1 Reference(Patient) "Paciente sujeto de la teleinterconsulta"
  * identificadorNacional 1..1 Identifier "Identificador nacional del paciente"
  * identificadorInternacional 1..1 Identifier "Identificador internacional del paciente"
* entidadSolicitante 1..1 Reference(PractitionerRole) "Responsables que solicitan la TICTF"
  * profesionalSolicitante 1..* Reference(Practitioner) "Profesionales que solicitan la TICTF"
  * institucionSolicitante 1..1 Reference(Location or Organization) "Institución que solicita la TICTF"
* especialidadSolicitada 1..* CodeableConcept "Especialidades solicitadas" //o es servicio??? ver el L2
* profesionalSolicitado 0..1 Reference(Practitioner) "Profesional solicitado opcional"
* razonSolicitud 1..1 BackboneElement "Problema de Salud específico por al cual se pide la TICTF"
  * codigoSolcitud 0..1 CodeableConcept "Codigo de problema de salud principal de la consulta"
  * narrativaSolicitud 1..1 Annotation "Descripción narrativa de motivo de solicitud"
  * formularioSolcitud 0..1 QuestionnaireResponse "Formulario de motivo de solicitud"
* resumenHistoriaClinica 1..* Reference(Bundle or DocumentReference) "Resumen de HC del paciente, idealmente un IPS"
* consentimientoInformado 1..1 Reference(Consent) "Consentimiento informado firmado por el paciente"
