Extension: FrCoverageAMCExtension
Id:        fr-coverage-amc-extended
Title:     "Extension AMC Étendue"
Description: "Extension pour les informations AMC étendues"
* ^context.type = #element
* ^context.expression = "Coverage"

* extension contains
    nomAMC 0..1 MS and
    numeroAMC 1..1 MS and
    codeConvention 0..1 MS and
    codeCSR 0..1 MS and
    datamatrix 0..1 MS

* extension[nomAMC].value[x] only string
* extension[nomAMC].url = "nomAMC" (exactly)

* extension[numeroAMC].value[x] only string
* extension[numeroAMC].url = "numeroAMC" (exactly)

* extension[codeConvention].value[x] only string
* extension[codeConvention].url = "codeConvention" (exactly)

* extension[codeCSR].value[x] only string
* extension[codeCSR].url = "codeCSR" (exactly)

* extension[datamatrix].value[x] only string
* extension[datamatrix].url = "datamatrix" (exactly)
