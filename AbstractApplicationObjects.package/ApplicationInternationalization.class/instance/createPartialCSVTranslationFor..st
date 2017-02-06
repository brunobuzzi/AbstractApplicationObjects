csv
createPartialCSVTranslationFor: webAppName
	"The receiver answer a String that is a CSV string to translate all needed string for the web application named <webAppName>"
	| printStream |

	translationCollectors at: webAppName ifAbsent: [^'Target Translation'].

	printStream := PrintStream on: (String withAll: 'Target Translation', String lf).

	(translationCollectors at: webAppName) asSortedCollection do: [:translationTarget | 
		printStream nextPutAll: translationTarget.
		printStream nextPutAll: String lf].

	^printStream contents