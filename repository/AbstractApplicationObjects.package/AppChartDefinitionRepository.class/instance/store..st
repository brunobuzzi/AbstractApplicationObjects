store
store: aBpmChartDefinition

	aBpmChartDefinition user ifNil: [ChartDefinitionWithoutUserException signal: 'All Chart Definitions must be created by a user'].
	aBpmChartDefinition bpmEnvironment ifNil: [ChartDefinitionWithoutEnvironmentException signal: 'All Chart Definitions must have aBpmEnvironment']. 

	(userChartDefinitions includesKey: aBpmChartDefinition repositoryKey) ifFalse: [userChartDefinitions at: aBpmChartDefinition repositoryKey put: OrderedCollection new].

	^(userChartDefinitions at: aBpmChartDefinition repositoryKey) add: aBpmChartDefinition