connection
prepareConnectionString

	(dbName = #mysql8) ifTrue: [^pathToDbExecutable, ' -h ', hostName, ' -u ', user, ' -p', password].

	^nil