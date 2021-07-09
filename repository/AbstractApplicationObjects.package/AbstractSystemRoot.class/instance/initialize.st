system setUp
initialize

	super initialize.

	centralUsers := Dictionary new.
	applicationUsers := Dictionary new.
	properties := Dictionary new.
	serverConfiguration := ApplicationServerConfiguration new.