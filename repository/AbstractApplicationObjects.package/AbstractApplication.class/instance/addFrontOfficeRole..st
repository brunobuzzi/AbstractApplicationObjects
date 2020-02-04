roles
addFrontOfficeRole: aBpmRole
	"The receiver add the frontoffice role <aBpmRole>"

	(frontofficeRoles includesIdentical: aBpmRole) ifTrue: [^aBpmRole].

	^frontofficeRoles add: aBpmRole