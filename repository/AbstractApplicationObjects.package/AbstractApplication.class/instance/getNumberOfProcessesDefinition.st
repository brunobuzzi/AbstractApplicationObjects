other
getNumberOfProcessesDefinition

	(Smalltalk includesKey: #BpmProcessDefinition) ifFalse: [^0].

	^(BpmProcessDefinition cacheAt: applicationName ifAbsent: [#()]) size