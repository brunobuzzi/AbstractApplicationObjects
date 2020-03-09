processes
getProcessesNamed: aString version: version ifNone: aBlock
	"Answer <aBpmProcessDefinition> named <aString> with version <version> if there is not such a process evaluated the niladic block <aBlock> "

	^(self getAllProcessesNamed: aString) detect: [:each | each version = version] ifNone: [^aBlock value]