processes
getAllProcessesNamed: aString
	"Answer a collection with all processes named <aString>"

	^processesDefinitions at: aString ifAbsent: [#()]