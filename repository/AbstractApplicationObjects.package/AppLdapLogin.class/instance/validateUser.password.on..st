other
validateUser: username password: password on: aBpmSystemRoot

	^System validatePasswordUsingLdapServers: (Array with: 'ldap://', ldapIP	)
		baseDn: dn 
		filterDn: '(uid=%s)'
		userId: username 
		password: password 
		bindDn: ou
		bindPassword: bindPassword