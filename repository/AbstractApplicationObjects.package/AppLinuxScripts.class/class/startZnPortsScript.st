scripts
startZnPortsScript
	"The receiver start all Zinc server ports contained in <zn-ports.ini> file.
	The file format of <zn-ports.ini> file must be: 8888,8989"
	| portsStream ports |

	portsStream := FileStream read: self getStartZnPortsFilePath.
	ports := ((portsStream contents trimBlanks subStrings: ',') collect: [:each | Number fromString: each]) asArray.
	portsStream close.

	ports do: [:port | (ZnSeasideNewGemServer gemServerNamed: self getSystemName) executeStartGemCommand: port].