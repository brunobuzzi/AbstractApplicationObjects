processes
nextVersionNumberForProcessNamed: aString
		"Answer whether <anInteger> which is the next version number to be used for the process definition named <aString> "
	| lastProcessDefinition |

	lastProcessDefinition := self lastVersionOfProcessNamed: aString ifNone: [^1].

	^lastProcessDefinition version + 1