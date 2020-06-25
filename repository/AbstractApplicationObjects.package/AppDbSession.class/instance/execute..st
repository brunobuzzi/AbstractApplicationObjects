sql execution
execute: sqlString
	| timeNow timeoutExpired result request bytesWritten error |

	request := String withAll: sqlString.
	request add: Character cr;
		add: Character lf.

	bytesWritten := osProcess stdin write: request.
	error := osProcess stderrReadAllAvailableInPipe.

	timeNow := TimeStamp now.
	timeoutExpired := false.

	[(result isNil or: [result isEmpty]) and: [timeoutExpired not]] whileTrue: [
		result := osProcess stdoutReadAllAvailableInPipe.
		(TimeStamp now > (timeNow plusSeconds: timeout)) ifTrue: [timeoutExpired := true].

	].
	
	^(AppDbSessionResult newOn: self With: result error: error expired: timeoutExpired)