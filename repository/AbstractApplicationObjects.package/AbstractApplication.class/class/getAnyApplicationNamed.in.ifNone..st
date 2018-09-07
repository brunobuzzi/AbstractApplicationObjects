other
getAnyApplicationNamed: aString in: aBpmEnvironment ifNone: aBlock 
	"Answer an OrbeonApplication or BpmApplication named <aString> if none evaluates the zero block argument <aBlock>"

	^self cache detect: [:each | each applicationName = aString and: [each bpmEnvironment == aBpmEnvironment]] ifNone: aBlock