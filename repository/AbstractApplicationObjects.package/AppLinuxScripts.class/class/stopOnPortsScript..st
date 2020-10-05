scripts
stopOnPortsScript: portsStrings
	"The receiver stop Zinc server on each port in <portsStrings>."

	(portsStrings subStrings: ',') do: [:portString | | aPortNumber |
		aPortNumber := Number fromString: portString trimBlanks.
		(ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStopGemCommand: aPortNumber.

	].