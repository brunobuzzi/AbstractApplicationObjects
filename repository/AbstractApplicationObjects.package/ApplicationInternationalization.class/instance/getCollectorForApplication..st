translation collector
getCollectorForApplication: webAppName
	"Answer <aDictionary> collector for the web application named <webAppName>"

	^(translationCollectors at: webAppName ifAbsent: [#()]) asSortedCollection