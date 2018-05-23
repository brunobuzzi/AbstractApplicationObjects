other
atTransatedString: translatedString put: originalString
	"The receiver register the already translated string <translatedString> with the original value <originalString>"

	^reverseTranslations at: translatedString put: originalString