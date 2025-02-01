Instance: DocumentReference1
InstanceOf: DocumentReference
Title: "Resumen de Historia Clínica"
Description: "Documento con resumen clínico del paciente"
* status = #current
* type.text = "Resumen Clínico"
* subject = Reference(Paciente1)
* content.attachment.url = "http://HIS.PaisDeOrigen.gov/tictf/DocumentReference1"


Instance: DocumentReference2
InstanceOf: DocumentReference
Title: "Documento Clínico Adjunto"
Description: "Documento clínico proporcionado como entrada en la subtarea."
* status = #current
* type.text = "Nota clínica"
* subject = Reference(Paciente1)
* content.attachment.url = "http://HIS.PaisDeOrigen.gov/tictf/DocumentReference2"