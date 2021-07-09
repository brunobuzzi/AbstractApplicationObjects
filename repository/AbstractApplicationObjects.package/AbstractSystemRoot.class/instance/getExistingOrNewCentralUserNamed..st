central users
getExistingOrNewCentralUserNamed: aString

	^(self getCentralUserNamed: aString) 
		ifNil: [ | centralUser |
				centralUser := self defaultCentralUserClass newUserNamed: aString password: ' '.
				self registerCentralUser: centralUser.
				centralUser]
		ifNotNil: [:centralUser | centralUser]