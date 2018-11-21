scripts
registerScript
	| portsStream ports |

	portsStream := FileStream read: self getStartAllPortsFilePath.
	ports := ((portsStream contents subStrings: ',') collect: [:each | Number fromString: each]) asArray.
	portsStream close.

	ZnSeasideNewGemServer register: self getSystemName on: ports.