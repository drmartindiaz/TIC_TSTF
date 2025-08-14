Profile: TICTFDiagRep
Parent: DiagnosticReport
Id: TICTFDiagRep
Title: "Respeusta de Teleinterconsulta"
Description: "Diagnostic Report para respeusta de Teleinterconsulta Transfronteriza"
// Estado de la respuesta
* status 1..1 MS
* status = #final (exactly)

* code 1..1
* code = http://snomed.info/sct#722421008 "Report of teleconsultation (record artifact)" (exactly)

// Paciente sujeto de la interconsulta
* subject 1..1 MS
* subject only Reference(TICTFPatient)

// Solicitud original
* basedOn 1..1 MS
* basedOn only Reference(TICTFServiceRequest)
* basedOn ^short = "Solicitud original de la interconsulta"

// Autor de la respuesta
* performer 1..1 MS
* performer only Reference(TICTFPractitionerRole)
* performer ^short = "Profesional que genera la respuesta de la interconsulta"

// Texto narrativo de la conclusión
* conclusion 1..1 MS
* conclusion ^short = "Conclusión o narrativa de la respuesta a la teleinterconsulta"

// Sección opcional de anexos o estudios adicionales
* result 0..* MS
* result only Reference(Observation)
* result ^short = "Anexos o estudios que respaldan la respuesta"