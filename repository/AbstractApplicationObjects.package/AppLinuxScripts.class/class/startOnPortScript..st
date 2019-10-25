scripts
startOnPortScript: aPortNumber
	"The receiver start a Zinc server on port <aPortNumber>."

	(ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStartGemCommand: (Number fromString: aPortNumber)