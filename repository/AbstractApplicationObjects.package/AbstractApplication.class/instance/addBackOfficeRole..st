roles
addBackOfficeRole: aBpmRole
	"The receiver add the backoffice role <aBpmRole>"

	(backofficeRoles includesIdentical: aBpmRole) ifTrue: [^aBpmRole].
 
	^backofficeRoles add: aBpmRole