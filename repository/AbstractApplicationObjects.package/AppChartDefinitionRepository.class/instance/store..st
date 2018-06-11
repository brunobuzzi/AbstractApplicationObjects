store
store: aBpmChartDefinition

	aBpmChartDefinition user ifNil: [ChartDefinitionWithoutUserException signal: 'All Chart Definitions must be created by a user'].
 
	(userChartDefinitions includesKey: aBpmChartDefinition username) ifFalse: [userChartDefinitions at: aBpmChartDefinition username put: OrderedCollection new].

	^(userChartDefinitions at: aBpmChartDefinition username) add: aBpmChartDefinition