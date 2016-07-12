other
initialize

	super initialize.

	loginModes := Dictionary new.

	"Intitally we set the user as Local not in LDAP"
	self setLocalForOrbeon.
	self setLocalForProcesses.