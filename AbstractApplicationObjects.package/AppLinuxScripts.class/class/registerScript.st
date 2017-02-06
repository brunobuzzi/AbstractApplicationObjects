scripts
registerScript
	| portsStream ports |

	portsStream := FileStream read: self getStartAllPortsFilePath.
	ports := ((portsStream contents subStrings: ',') collect: [:each | Number fromString: each]) asArray.
	portsStream close.

	ZnSeasideGemServer register: self getSystemName on: ports.