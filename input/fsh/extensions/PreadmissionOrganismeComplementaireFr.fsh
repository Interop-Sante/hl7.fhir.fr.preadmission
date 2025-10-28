Extension: FrCoverageAMCExtension
Id:        fr-coverage-amc-extended
Title:     "Extension AMC Étendue ROC"
Description: "Extension pour les informations AMC étendues"
* ^context.type = #element
* ^context.expression = "Coverage"

* extension contains
    codeConvention 0..1 MS and
    codeCSR 0..1 MS and
    datamatrix 0..1 MS

* extension[codeConvention].value[x] only string
* extension[codeConvention].url = "codeConvention" (exactly)

* extension[codeCSR].value[x] only string
* extension[codeCSR].url = "codeCSR" (exactly)

* extension[datamatrix].value[x] only string
* extension[datamatrix].url = "datamatrix" (exactly)
