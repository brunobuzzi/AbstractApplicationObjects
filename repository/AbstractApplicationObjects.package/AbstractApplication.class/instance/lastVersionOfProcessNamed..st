processes
lastVersionOfProcessNamed: aString
		"Answer the last version of process definition <aBpmProcessDefinition> named <aString>"

	^self lastVersionOfProcessNamed: aString ifNone: []