other
getAnyApplicationNamed: aString
	"Answer a OrbeonApplication or BpmApplication named <aString> if none answer <nil>"

	^self getAnyApplicationNamed: aString ifNone: [nil]