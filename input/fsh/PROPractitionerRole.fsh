Profile: TICTFPractitionerRole
Parent: PractitionerRole
Id: TICTFPractitionerRole
Title: "TICTF Profesional, Organización y País"
Description: "Definición de Profesional, Organización y País para solicitante y quien responde las interconsultas"
* practitioner 1..1
* organization 1..1
* organization only Reference(TICTFOrganization)

// Instancias de Practitioners y Organizaciones
Instance: TICTFPractitionerRole1
InstanceOf: TICTFPractitionerRole
Title: "Rol del Profesional Solicitante"
Description: "Profesional que solicita la interconsulta"
* practitioner = Reference(Practitioner1)
* organization = Reference(TICTFOrganization1)

Instance: TICTFPractitionerRole2
InstanceOf: TICTFPractitionerRole
Title: "Rol del Profesional Respondedor"
Description: "Profesional que responde la interconsulta"
* practitioner = Reference(Practitioner2)
* organization = Reference(TICTFOrganization1)

Instance: Practitioner1
InstanceOf: Practitioner
Title: "Profesional Solicitante"
Description: "Ejemplo de un profesional de la salud que solicita la interconsulta"
* name.family = "Gomez"
* name.given[0] = "Ana"

Instance: Practitioner2
InstanceOf: Practitioner
Title: "Profesional Respondedor"
Description: "Ejemplo de un profesional de la salud que responde la interconsulta"
* name.family = "Fernandez"
* name.given[0] = "Luis"