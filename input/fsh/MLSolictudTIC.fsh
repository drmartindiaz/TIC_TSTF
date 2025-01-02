Logical: MLSolictudTICTF
Parent: Base
Id: SolictudTICTF
Title: "Solictud TICTF"
Description: "Nodelo Lógico para la solicitud de un Tele Interconsulta Transfornteriza"
* identificador 1..1 Identifier "Identificador unico de la solicitud"
* paisOrigen 1..1 CodeableConcept "País que origina la TITF"
* paciente 1..1 Reference(Patient) "Paciente sujeto de la teleinterconsulta"
  * identificadorNacional 1..1 Identifier "Identificador nacional del paciente"
  * identificadorInternacional 1..1 Identifier "Identificador internacional del paciente"
* profesionalSolcitante 1..* Reference(Practitioner) "Profesionales que solicitan la TICTF"
* especialidadSolicitada 1..* CodeableConcept "Especialidades solicitadas"
* profesionalSolicitado 0..1 Reference(Practitioner)
* razonSolicitud 0..1 CodeableConcept "Razón por al cual se pide la TICTF"
* resumenHistoriaClinica 1..1 Reference(IPS or DocumentReference) "Resumen de HC del paciente, idealmente un IPS"
* consentimientoInformado 1..1 Reference(DocumentReference) "Consentimiento informado firmdo por el paciente"