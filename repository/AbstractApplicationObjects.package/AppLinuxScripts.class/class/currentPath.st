path
currentPath

	^self currentPathOnError: [Error signal: 'No GS_HOME variable defined. To execute this script $GS_HOME must be defined']