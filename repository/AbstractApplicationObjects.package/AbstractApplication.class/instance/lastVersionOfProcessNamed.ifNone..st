processes
lastVersionOfProcessNamed: aString ifNone: aBlock
		"Answer the last version of process definition <aBpmProcessDefinition> named <aString>"

	^(processesDefinitions at: aString ifAbsent: [^aBlock value]) last