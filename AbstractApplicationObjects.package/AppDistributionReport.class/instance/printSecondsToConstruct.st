other
printSecondsToConstruct
	| timeToConstruct |

	(secondsToConstruct < 60) ifTrue: [^(secondsToConstruct asScaledDecimal: 2) printString, 'sec'].

	timeToConstruct := secondsToConstruct // 60.
	(timeToConstruct < 60) ifTrue: [^(secondsToConstruct asScaledDecimal: 1) printString, 'min'].

	timeToConstruct := secondsToConstruct // 60.
	(timeToConstruct < 60) ifTrue: [^(secondsToConstruct asScaledDecimal: 1) printString, 'hours'].

	timeToConstruct := secondsToConstruct // 24.
	^(secondsToConstruct asScaledDecimal: 1) printString, 'days'