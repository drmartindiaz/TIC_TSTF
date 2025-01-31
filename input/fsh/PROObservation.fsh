Profile: TICTF_ObsGral
Parent: Observation
Id: TICTFObsGral
Title: "TICTF Nota Narrativa General"
Description: "Observation para nota narrativa de la solicitud de IC transfronteriza"
* basedOn 1..1 
* basedOn ^short = "Solicitud de TICTF de referencia para esta nota narrativa"
* basedOn only Reference(TICTFServiceRequest)
* status = #registered 
* code.coding   
  * system = LOINC
  * code = #11506-3
  * display = "Provider-unspecified note (narrative)"
* subject 1..1  
* subject ^short = "Pacente sujeto de esta nota narrativa"
* subject only Reference(Patient)
* valueString 1..1  
* valueString ^short = "Contenido de la Nota Narrativa" //Narrativa de la solicitud de interconsulta

Profile: TICTF_ObsSolicitud
Parent: Observation
Id: TICTFObsSolicitud
Title: "TICTF Narrativa de Solicitud"
Description: "Observation para narrativa de la solicitud de IC transfronteriza"
* basedOn 1..1  
* basedOn ^short = "Solicitud de TICTF de referencia para esta nota narrativa"
* basedOn only Reference(TICTFServiceRequest)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #11487-6
  * display = "Consultation request (narrative)"
* subject 1..1  
* subject ^short = "Pacente sujeto de esta nota narrativa"
* subject only Reference(Patient)
* valueString 1..1  
* valueString ^short = "Contenido de la Nota Narrativa" //Narrativa de la solicitud de interconsulta

Profile: TICTF_ObsRespuesta
Parent: Observation
Id: TICTFObsRespuesta
Title: "TICTF Narrativa de Respuesta"
Description: "Observation para narrativa de la solicitud de IC transfronteriza"
// * basedOn 1..1  
// * basedOn ^short = "Tarea de TICTF de referencia para esta nota narrativa"
// * basedOn only Reference(TICTF_MainTask)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #34764-0
  * display = "Consultation note (narrative)"
* subject 1..1  
* subject ^short = "Pacente sujeto de esta nota narrativa"
* subject only Reference(Patient)
* valueString 1..1  
* valueString ^short = "Contenido de la Nota Narrativa" //Narrativa de la solicitud de interconsulta