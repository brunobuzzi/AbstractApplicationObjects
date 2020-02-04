roles
getBackOfficeRoleNamed: aString
	"The receiver answer <aBpmBackOfficeRole> named <aString> if none answer <nil>"

	^frontofficeRoles detect: [:each | each name = aString] ifNone: []