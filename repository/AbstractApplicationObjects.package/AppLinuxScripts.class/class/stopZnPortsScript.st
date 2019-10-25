scripts
stopZnPortsScript
	"The receiver stop all Zinc server listening ports contained in <zn-ports.ini> file.
	The file format of <zn-ports.ini> file must be: 8888,8989"
	| portsStream ports server |

	portsStream := FileStream read: self getStartZnPortsFilePath.
	ports := ((portsStream contents trimBlanks subStrings: ',') collect: [:each | Number fromString: each]) asArray.
	portsStream close.

	server := ZnSeasideNewGemServer gemServerNamed: self getSystemName.

	ports do: [:port | server executeStopGemCommand: port].