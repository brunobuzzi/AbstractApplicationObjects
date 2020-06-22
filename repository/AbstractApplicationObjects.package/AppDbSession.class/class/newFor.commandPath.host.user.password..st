instance creation
newFor: databaseName commandPath: pathToDbExecutable host: hostName user: username password: pwd

	^self new initialize
		setPathToDbExecutableFor: databaseName commandPath: pathToDbExecutable host: hostName user: username password: pwd;
		yourself