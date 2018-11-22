scripts
startZnPortsScript
	| portsStream ports |

	portsStream := FileStream read: self getStartZnPortsFilePath.
	ports := ((portsStream contents trimBlanks subStrings: ',') collect: [:each | Number fromString: each]) asArray.
	portsStream close.

	ports do: [:port | (ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStartGemCommand: port].