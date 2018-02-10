other
initialize

	super initialize.

	loginModes := Dictionary new.
	timersTimespan := 600. "SECONDS"

	"Intitally we set the user as Local not in LDAP"
	self setLocalForOrbeon.
	self setLocalForProcesses.