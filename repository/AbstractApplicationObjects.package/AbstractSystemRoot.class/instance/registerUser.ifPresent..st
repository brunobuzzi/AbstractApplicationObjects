users
registerUser: anApplicationUser ifPresent: aBlock

	(globalUsers includesKey: anApplicationUser username) ifTrue: [^aBlock value].

	globalUsers at: anApplicationUser username put: anApplicationUser