Profile: TICTFPatient
Parent: Patient //LAC_Patient cuando este publicada bien LACPass
Id: TICTFPatient
Title: "TICTFPatient"
Description: "Paciente para la guia de Teleinterconsulta transfronteriza basado en paciente LACPAss"
* obeys lac-pat-1 and lac-pat-2
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.description = "Patient identifier"
* identifier ^slicing.rules = #open
* identifier contains
    international 1..* MS and
    national 1..* MS
* identifier[international] ^definition = "The international identifier for the patient. The passport number is used."
* identifier[international].use 1..
* identifier[international].use = #official (exactly)
* identifier[international].use ^short = "fixed to official"
* identifier[international].type 1..
* identifier[international].type = $v2-0203#PPN (exactly)
* identifier[international].type ^short = "Passport number"
* identifier[international].system 1..
* identifier[international].system ^short = "URN OID for the country (ISO-3306 numeric)"
* identifier[national] ^definition = "The national identifier for the patient. Any type different from PPN can be used."
* identifier[national].type 1..
* identifier[national].type from $national-identifier-types (required)
* identifier[national].type ^short = "Any type except PPN (Passport number)"
* identifier[national].system 1..
* identifier[national].system ^short = "URN OID for the country (ISO-3306 numeric)"

Invariant: lac-pat-1
Description: "A patient can only have a single official identifier"
* severity = #error
* expression = "Patient.identifier.where(use='official').count() >= 1"

Invariant: lac-pat-2
Description: "The identifier system must be a URN OID"
* severity = #error
* expression = "Patient.identifier.where(use='official')[0].system.startsWith('urn:oid.2.16.')"