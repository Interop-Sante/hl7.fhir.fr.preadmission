Extension: EncounterAgentInstructions
Id: encounter-agent-instructions
Title: "Consignes de l'agent administratif"
Description: "Consignes à destination du patient, fournies par l'agent administratif"
* ^context.type = #element
* ^context.expression = "Encounter"
* value[x] only string
* valueString 1..1