translation
addLanguage: symbolName
	"The receiver add the new language named <symbolName> and create a new translation <Dictionary>.
	If the language already exist answer the current translation <Dictionary>"

	^languagesDictionaries 
		at: symbolName 
		ifPresent: [:translationDictionary | translationDictionary]
		ifAbsent: [languagesDictionaries at: symbolName put: Dictionary new]