other
initializeTranslationCollector

	translationCollectors := Dictionary new. "each key is an App name (backoffice, frontoffice) and each value is collection of translation that needsto be done"
	"the collectors are used to collect all string that are displayed in a Web App and these string need a translation each"