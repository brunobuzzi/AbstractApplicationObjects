other
currentPathOnError: aBlock
	| currentPath |

	currentPath := ((System performOnServer: 'echo $GS_HOME') subStrings: String lf) 
							ifEmpty: [^aBlock value]
							ifNotEmpty: [:collection | collection last].

	^currentPath, self getShortScriptPath