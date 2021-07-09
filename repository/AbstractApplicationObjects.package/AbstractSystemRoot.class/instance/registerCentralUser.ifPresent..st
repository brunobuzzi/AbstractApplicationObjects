central users
registerCentralUser: aCentralUser ifPresent: aBlock

	(centralUsers includesKey: aCentralUser username) ifTrue: [^aBlock value].

	centralUsers at: aCentralUser username put: aCentralUser