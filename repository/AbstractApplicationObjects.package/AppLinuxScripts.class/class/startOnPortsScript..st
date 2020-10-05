scripts
startOnPortsScript: portsStrings
	"The receiver start a Zinc server on each port in <portsStrings>."

	(portsStrings subStrings: ',') do: [:portString | | aPortNumber |
		aPortNumber := Number fromString: portString trimBlanks.
		(self isValidPortNumber: aPortNumber) 
		ifFalse: [^AppInvalidPortException signal: 'The port number [', aPortNumber printString, '] is invalid !!!. Check file ../scripts/ports-all.ini'].

		(ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStartGemCommand: aPortNumber
	].