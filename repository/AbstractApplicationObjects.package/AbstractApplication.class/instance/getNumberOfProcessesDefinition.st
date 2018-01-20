other
getNumberOfProcessesDefinition

	(Smalltalk includesKey: #BpmProcessDefinition) ifFalse: [^0].

	^((Smalltalk at: #BpmProcessDefinition) cacheAt: applicationName ifAbsent: [#()]) size