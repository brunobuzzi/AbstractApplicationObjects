central users
unregisterCentralUser: aCentralUser ifAbsent: aBlock

	(centralUsers includesKey: aCentralUser username) ifFalse: [^aBlock value].

	centralUsers removeKey: aCentralUser username