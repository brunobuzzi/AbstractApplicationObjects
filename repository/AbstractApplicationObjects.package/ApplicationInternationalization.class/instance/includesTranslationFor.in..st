translation
includesTranslationFor: aString in: languageName
	"Answer whether or not the receiver includes the translation to laguague <languageName> for the string <aString>"

	^(languagesDictionaries at: languageName ifAbsent: [^false])
			includesKey: aString