users
getUserNamed: aString ifAbsent: aBlock

	^globalUsers at: aString ifAbsent: aBlock