Profile: TICTF_ObsGral
Parent: Observation
Id: TICTFObsGral
Title: "TICTF Narrativa general"
Description: "Observation para narrativa de la solicitud de IC transfronteriza"
* basedOn 1..1 
* basedOn only Reference(TICTFServiceRequest)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #11487-6
  * display = "Consultation request (narrative)"
* subject 1..1
* subject only Reference(Patient)
* valueString 1..1 //Narrativa de la solicitud de interconsulta

Profile: TICTF_ObsSolicitud
Parent: Observation
Id: TICTFObsSolicitud
Title: "TICTF Narrativa de Solicitud"
Description: "Observation para narrativa de la solicitud de IC transfronteriza"
* basedOn 1..1 
* basedOn only Reference(TICTFServiceRequest)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #11487-6
  * display = "Consultation request (narrative)"
* subject 1..1
* subject only Reference(Patient)
* valueString 1..1 //Narrativa de la solicitud de interconsulta

Profile: TICTF_ObsRespuesta
Parent: Observation
Id: TICTFObsRespuesta
Title: "TICTF Narraiva de Respuesta"
Description: "Observation para narrativa de la solicitud de IC transfronteriza"
* basedOn 1..1 
* basedOn only Reference(TICTFServiceRequest)
* status = #registered
* code.coding   
  * system = LOINC
  * code = #11487-6
  * display = "Consultation request (narrative)"
* subject 1..1
* subject only Reference(Patient)
* valueString 1..1 //Narrativa de la solicitud de interconsulta