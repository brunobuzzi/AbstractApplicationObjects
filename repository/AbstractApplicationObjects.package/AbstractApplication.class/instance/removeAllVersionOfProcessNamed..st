processes
removeAllVersionOfProcessNamed: procName
	"The receiver remove all versions of BpmProcessDefinition named <procName> in Application named <appName>. Answer <nil> if not found"

	processesDefinitions removeKey: procName ifAbsent: [^nil].

	^processesDefinitions