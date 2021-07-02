system setUp
initialize

	super initialize.

	globalUsers := Dictionary new.
	properties := Dictionary new.
	serverConfiguration := ApplicationServerConfiguration new.