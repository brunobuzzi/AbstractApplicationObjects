other
initialize

	super initialize.

	languagesDictionaries := Dictionary new."each key is a language name and each value is a Dictionary of translations"

	translationCollectors := Dictionary new. "each key is an App name (backoffice, frontoffice) and each value is collection of translation that needsto be done"
	"the collectors are used to collect all string that are displayed in a Web App and these string need a translation each"

	self initializeDefaultLanguages.