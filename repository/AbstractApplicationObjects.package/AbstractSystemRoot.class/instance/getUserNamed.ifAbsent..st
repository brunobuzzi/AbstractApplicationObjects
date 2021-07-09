application users
getUserNamed: aString ifAbsent: aBlock

	^applicationUsers at: aString ifAbsent: aBlock