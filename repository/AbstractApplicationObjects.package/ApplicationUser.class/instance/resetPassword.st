other
resetPassword
	"Reset the password of the receiver"
	| random randomHash |

	random := Lag1MwcRandom new integer printString.
	randomHash := random hash printString.

	self password: (random, '-', randomHash)