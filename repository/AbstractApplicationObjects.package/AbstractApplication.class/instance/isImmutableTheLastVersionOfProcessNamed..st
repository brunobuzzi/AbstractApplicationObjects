processes
isImmutableTheLastVersionOfProcessNamed: aString
		"Answer whether or not the last version of process definition named <aString> is immutable"

	^(self lastVersionOfProcessNamed: aString ifNone: [^false]) isImmutable