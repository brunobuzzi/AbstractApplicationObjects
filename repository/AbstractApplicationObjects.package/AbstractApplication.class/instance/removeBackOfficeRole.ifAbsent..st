roles
removeBackOfficeRole: aBpmRole ifAbsent: aBlock
	"The receiver remove the backoffice role <aBpmRole> if absent evaluate the niladic block <aBlock>"

	^backofficeRoles remove: aBpmRole ifAbsent: aBlock