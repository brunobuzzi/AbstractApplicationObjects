scripts
startOnPortScript: aPortNumber
	"The receiver start a Zinc server on port <aPortNumber>."

	(self isValidPortNumber: aPortNumber) ifFalse: [^AppInvalidPortException signal: 'The port number [', aPortNumber printString, '] is invalid !!!. Check file ../scripts/ports-all.ini'].

	(ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStartGemCommand: aPortNumber