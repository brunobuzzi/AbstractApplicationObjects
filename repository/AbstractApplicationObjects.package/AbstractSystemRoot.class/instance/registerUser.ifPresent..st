application users
registerUser: aUser ifPresent: aBlock

	(applicationUsers includesKey: aUser username) ifTrue: [^aBlock value].

	applicationUsers at: aUser username put: aUser