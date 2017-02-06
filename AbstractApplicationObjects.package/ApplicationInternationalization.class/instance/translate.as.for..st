translation
translate: stringKey as: translatedString for: languageName
	"The receiver translate the original string <stringKey> as a new translation <translatedString> for the language <languageName>"

	^(languagesDictionaries at: languageName ifAbsent: [^stringKey])
			at: stringKey asString put: translatedString