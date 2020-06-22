instance creation mysql
newForMysql_usrBin: hostName user: username password: pwd

	^self newFor: #mysql8 commandPath: '/usr/bin/mysql' host: hostName user: username password: pwd