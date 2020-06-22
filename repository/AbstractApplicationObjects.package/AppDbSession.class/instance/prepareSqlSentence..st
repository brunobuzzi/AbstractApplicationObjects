sql execution
prepareSqlSentence: sqlString

	(dbName = #mysql8) ifTrue: [^pathToDbExecutable, ' -h ', hostName, ' -u ', user, ' -p', password, ' -N -B -e "', sqlString, '"'].

	^sqlString