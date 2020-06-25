other
newOn: anAppDbSession With: value error: errorString expired: aBoolean

	^self new initialize
		setSession: anAppDbSession value: value error: errorString expired: aBoolean;
		yourself