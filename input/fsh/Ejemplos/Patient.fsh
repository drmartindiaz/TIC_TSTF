Instance: Paciente1
InstanceOf: TICTFPatient
Title: "Paciente Ejemplo"
Description: "Ejemplo de paciente para la solicitud de interconsulta"
* id = "Paciente1"
* active = true
* identifier[international].use = #official
* identifier[international].type = $v2-0203#PPN
* identifier[international].system = "urn:oid.2.16.152"
* identifier[international].value = "CL/F12-1234123-2"
* identifier[national].type = $v2-0203#TAX
* identifier[national].system = "urn:oid.2.16.152"
* identifier[national].value = "CL/18922652-7"
* name.family = "Perez"
* name.given[0] = "Juan"
* name.given[1] = "Domingo"
* gender = #male
* birthDate = "1980-05-15"