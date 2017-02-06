translation
getTranslationsOf: languageName
	"Answer the translation dictionary of language named <languageName> if the language is absent then answer a new empty <Dictionary>"

	^languagesDictionaries at: languageName ifAbsent: [Dictionary new]