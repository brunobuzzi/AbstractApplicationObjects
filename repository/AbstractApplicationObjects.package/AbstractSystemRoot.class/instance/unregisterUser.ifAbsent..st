application users
unregisterUser: aUser ifAbsent: aBlock

	(applicationUsers includesKey: aUser username) ifFalse: [^aBlock value].

	applicationUsers removeKey: aUser username