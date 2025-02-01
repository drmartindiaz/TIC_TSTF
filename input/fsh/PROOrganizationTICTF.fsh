Profile: TICTFOrganization
Parent: Organization
Id: PROOrganizationTICTF
Title: "TICTF Organización"
Description: "Organización solicitante o respondedora de TICTF"
* address 1..1
* address.country 1..1
* address.country from Country2 (required)
* address.country ^short = "Debe ser un código de 2 letras de  ISO-3306 2-letter"

