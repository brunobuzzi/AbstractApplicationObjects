ports handling
getAllPortsNumber
	| portsFile ports |

	portsFile := GsFile openReadOnServer: self getStartAllPortsFilePath.

	ports := portsFile contents.

	portsFile close.

	^ports