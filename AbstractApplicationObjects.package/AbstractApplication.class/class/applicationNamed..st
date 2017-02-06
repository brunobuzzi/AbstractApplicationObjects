other
applicationNamed: aString
	"Answer a OrbeonApplication or BpmApplication named <aString> if none answer <nil>"

	^self applicationNamed: aString ifNone: [nil]