roles
removeAllRoles

	self getAllRoles do: [:role | self removeRole: role ifAbsent: [AppObjectNotInCacheException signal: 'No role named [', role name, ']']]