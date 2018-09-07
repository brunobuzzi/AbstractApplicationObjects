other
getAnyApplicationNamed: aString in: aBpmEnviroment
	"Answer a OrbeonApplication or BpmApplication named <aString> if none answer <nil>"

	^self getAnyApplicationNamed: aString in: aBpmEnviroment ifNone: [nil]