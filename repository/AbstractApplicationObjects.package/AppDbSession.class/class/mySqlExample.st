examples
mySqlExample

	^(self newForMysql_usrBin: 'localhost' user: 'root' password: 'Mysql8080!')
			execute: 'select distinct app from orbeon.orbeon_form_definition'