Instance: Consent1
InstanceOf: Consent
Title: "Consentimiento Informado"
Description: "Consentimiento del paciente para la interconsulta"
* status = #active
* scope = #patient-privacy
* patient = Reference(Paciente1)
* category = LOINC#59284-0
* policyRule.text = "Consentimiento para TICTF"