internationalization
getTranslationsOf: languageName
	"Answer the translation dictionary of language named <languageName> if the language is absent then answer a new empty <Dictionary>"

	^applicationInternationalization getTranslationsOf: languageName