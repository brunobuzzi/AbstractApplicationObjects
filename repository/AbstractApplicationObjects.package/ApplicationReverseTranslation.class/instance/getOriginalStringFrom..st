other
getOriginalStringFrom: translatedString
	"The receiver answer the original string associated with the transalted string <translatedString>"

	^self getOriginalStringFrom: translatedString ifAbsent: [nil]