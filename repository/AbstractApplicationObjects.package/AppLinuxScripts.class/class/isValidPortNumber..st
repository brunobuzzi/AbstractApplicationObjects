ports handling
isValidPortNumber: aPortNumber
	"Answer whether or not <aPortNumber> is valid to start a Web Server"

	^(self getAllPortsNumber subStrings: ',') includes: aPortNumber printString