scripts
stopOnPortScript: aPortNumber
	"The receiver stop the Zinc server on port <aPortNumber>."

	(ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStopGemCommand: (Number fromString: aPortNumber)