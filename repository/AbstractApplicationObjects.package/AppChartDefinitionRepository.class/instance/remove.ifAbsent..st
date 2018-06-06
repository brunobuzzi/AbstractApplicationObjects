other
remove: aBpmChartDefinition ifAbsent: aBlock

	aBpmChartDefinition user ifNil: [ChartDefinitionWithoutUserException signal: 'All Chart Definitions must be created by a user'].
 
	(userChartDefinitions includesKey: aBpmChartDefinition username) ifFalse: [^aBlock value].

	^(userChartDefinitions at: aBpmChartDefinition username) remove: aBpmChartDefinition ifAbsent: [^aBlock value]