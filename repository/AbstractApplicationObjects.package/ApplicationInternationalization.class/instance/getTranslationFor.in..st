translation
getTranslationFor: aString in: languageName
	"The receiver answer the translation to language <languageName> for the string <aString>.
	If no translation is found or the language is missing then answer the original string <aString>"

	currentCollector ifNotNil: [(translationCollectors at: currentCollector ifAbsentPut: [Set new]) add: aString].

	^(languagesDictionaries at: languageName ifAbsent: [^aString])
			at: aString asString ifAbsent: [aString]