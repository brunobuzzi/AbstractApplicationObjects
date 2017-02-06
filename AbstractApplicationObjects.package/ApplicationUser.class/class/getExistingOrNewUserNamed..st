other
getExistingOrNewUserNamed: aString

	^(self getUserNamed: aString) 
		ifNil: [(self newUserNamed: aString password: '') addToCache; yourself]
		ifNotNil: [:user | user]