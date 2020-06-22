sql execution
execute: sqlString
	
	osProcess 
	ifNil: [osProcess := GsHostProcess fork: (self prepareSqlSentence: sqlString)]
	ifNotNil: [].

	^osProcess stdoutReadAllAvailableInPipe