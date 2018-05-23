other
getOriginalStringFrom: translatedString ifAbsent: aBlock
	"The receiver answer the original string associated with the transalted string <translatedString>"

	^reverseTranslations at: translatedString ifAbsent: aBlock