roles
getBackOfficeRoleNamed: aString
	"The receiver answer <aBpmBackOfficeRole> named <aString> if none answer <nil>"

	^backofficeRoles detect: [:each | each name = aString] ifNone: []