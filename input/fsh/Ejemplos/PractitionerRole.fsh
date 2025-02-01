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
* organization = Reference(TICTFOrganization2)

Instance: TICTFPractitionerRole3
InstanceOf: TICTFPractitionerRole
Title: "Rol del Especialista Consultor"
Description: "Especialista que responde la subtarea."
* practitioner = Reference(Practitioner3)
* organization = Reference(TICTFOrganization1)