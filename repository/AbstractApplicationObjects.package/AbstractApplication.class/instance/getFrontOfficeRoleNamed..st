roles
getFrontOfficeRoleNamed: aString
	"The receiver answer <aBpmFrontOfficeRole> named <aString> if none answer <nil>"

	^frontofficeRoles detect: [:each | each name = aString] ifNone: []