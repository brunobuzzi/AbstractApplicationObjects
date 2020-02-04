roles
removeFrontOfficeRole: aBpmRole ifAbsent: aBlock
	"The receiver remove the frontoffice role <aBpmRole> if absent evaluate the niladic block <aBlock>"

	^frontofficeRoles remove: aBpmRole ifAbsent: aBlock