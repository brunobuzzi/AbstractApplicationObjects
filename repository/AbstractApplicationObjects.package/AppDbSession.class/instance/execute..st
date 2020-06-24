sql execution
execute: sqlString
 
	osProcess 
	ifNil: [osProcess := GsHostProcess fork: (self prepareSqlSentence: sqlString)]
	ifNotNil: [].

	(Delay forSeconds: 1) wait.

	^Array with: osProcess stderrReadAllAvailableInPipe with: osProcess stdoutReadAllAvailableInPipe