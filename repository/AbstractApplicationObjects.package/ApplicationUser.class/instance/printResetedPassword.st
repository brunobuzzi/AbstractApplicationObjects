other
printResetedPassword
	"Answer the reset password of the receiver if the case. If not answer 'N/A'.
	If hash(1) = 2 --> the password was resetd. See #resetPassword method"
	| pwdArray |

	((self password subStrings: '-') size = 2) ifFalse: [^'N/A']. "password NOT reseted"

	pwdArray := self password subStrings: '-'.

	(pwdArray at: 1) hash printString = (pwdArray at: 2) ifTrue: [^self password]. "password has been reseted"

	^'N/A' "password NOT reseted"