Profile: TICTF_Observation
Parent: Observation
Id: TICTFObservation
Title: "Observation para narrativa de la solicitud de IC"
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
* note 1..1 //Narrativa de la solicitud de interconsulta