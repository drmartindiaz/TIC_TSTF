Profile: TICTFOrganization
Parent: Organization
Id: PROOrganizationTICTF
Title: "TICTF Organización"
Description: "Organización solicitante o respondedora de TICTF"
* address 1..1
* address.country 1..1
* address.country from Country2 (required)
* address.country ^short = "Debe ser un código de 2 letras de  ISO-3306 2-letter"

Instance: TICTFOrganization1
InstanceOf: PROOrganizationTICTF
Title: "Organización de la TICTF"
Description: "Organización solicitante o respondedora de TICTF"
* name = "Hospital Central"
* address.country = "AR" // Código ISO 3166-1 alpha-2