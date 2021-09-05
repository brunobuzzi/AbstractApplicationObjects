internationalization
getTranslationFor: aString in: languageName
	"The receiver answer the translation to language <languageName> for the string <aString>.
	If no translation is found or the language is missing then answer the original string <aString>"

	^applicationInternationalization getTranslationFor: aString in: languageName