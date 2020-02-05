processes
hasProcessNamed: aString
		"Answer whether or not the receiver has <aBpmProcessDefinition> named <aString>"

	^processesDefinitions includesKey: aString