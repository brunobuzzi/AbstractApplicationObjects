users
unregisterUser: anApplicationUser ifAbsent: aBlock

	(globalUsers includesKey: anApplicationUser username) ifFalse: [^aBlock value].

	globalUsers removeKey: anApplicationUser username