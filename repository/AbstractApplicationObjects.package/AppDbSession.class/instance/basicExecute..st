sql execution
basicExecute: sqlString
	| request bytesWritten |

	request := String withAll: sqlString.
	request add: Character cr;
		add: Character lf.

	bytesWritten := osProcess stdin write: request.

	^bytesWritten