Updating
applicationName: newValue

	(newValue includes: Character space) ifTrue: [^AppNameWithSpaceException signal: 'An Application can NOT have space in its name']. 

	applicationName := newValue