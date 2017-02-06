other
removeFromCache

	applicationName ifNil: [^self throwExceptionNoApplicationName].
	applicationName isEmpty ifTrue: [^self throwExceptionNoApplicationName].

	(self cache includesKey: applicationName) ifFalse: [^self throwExceptionNotInCache].

	^self cache removeKey: applicationName