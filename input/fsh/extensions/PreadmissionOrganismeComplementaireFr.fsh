Extension: FrCoverageAMCExtension
Id:        fr-coverage-amc-extended
Title:     "Extension AMC Étendue ROC"
Description: "Extension pour les informations AMC étendues issues de l'attestation harmonisée / DataMatrix AMC"

* ^context.type = #element
* ^context.expression = "Coverage"

* value[x] 0..0

* extension contains
    codeCSR 0..1 MS and
    datamatrix 0..1 MS and
    conventionParDomaine 0..* MS

* extension[codeCSR].value[x] only code
* extension[codeCSR].url = "codeCSR" (exactly)

* extension[datamatrix].value[x] only string
* extension[datamatrix].url = "datamatrix" (exactly)

* extension[conventionParDomaine].url = "conventionParDomaine" (exactly)
* extension[conventionParDomaine].value[x] 0..0
* extension[conventionParDomaine].extension contains
    codeConvention 1..1 MS and
    domaine 0..* MS and
    tousDomaines 0..1 MS

* extension[conventionParDomaine].extension[codeConvention].value[x] only code
* extension[conventionParDomaine].extension[codeConvention].url = "codeConvention" (exactly)

* extension[conventionParDomaine].extension[domaine].value[x] only code
* extension[conventionParDomaine].extension[domaine].url = "domaine" (exactly)

* extension[conventionParDomaine].extension[tousDomaines].value[x] only boolean
* extension[conventionParDomaine].extension[tousDomaines].url = "tousDomaines" (exactly)