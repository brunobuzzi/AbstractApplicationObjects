scripts
stopZnPortsScript
	| portsStream ports server |

	portsStream := FileStream read: self getStartZnPortsFilePath.
	ports := ((portsStream contents trimBlanks subStrings: ',') collect: [:each | Number fromString: each]) asArray.
	portsStream close.

	server := ZnSeasideNewGemServer gemServerNamed: self getSystemName.

	ports do: [:port | server executeStopGemCommand: port].