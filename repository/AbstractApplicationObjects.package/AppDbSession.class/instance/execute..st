sql execution
execute: sqlString
	| timeNow timeoutExpired result |

	osProcess 
	ifNil: [osProcess := GsHostProcess fork: (self prepareSqlSentence: sqlString)]
	ifNotNil: [].

	timeNow := TimeStamp now.
	timeoutExpired := false.

	[(result isNil or: [result isEmpty]) and: [timeoutExpired not]] whileTrue: [
		result := osProcess stdoutReadAllAvailableInPipe.
		(TimeStamp now > (timeNow plusSeconds: timeout)) ifTrue: [timeoutExpired := true].

	].
	
	^AppDbSessionResult newWith: result error: osProcess stderrReadAllAvailableInPipe expired: timeoutExpired