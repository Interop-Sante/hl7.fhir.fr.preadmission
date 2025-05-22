Extension: PreadmissionContextExtension
Id: appointment-context-extension
Title: "Contexte du rendez-vous"
Description: "Contexte lié au rendez-vous (ex : ALD, maternité, accidents du travail, etc.)"
* ^context.type = #element
* ^context.expression = "Appointment"
* value[x] only Reference(PreadmissionConsentFr)
