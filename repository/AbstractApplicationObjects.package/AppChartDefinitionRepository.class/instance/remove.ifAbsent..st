store
remove: aBpmChartDefinition ifAbsent: aBlock

	aBpmChartDefinition user ifNil: [ChartDefinitionWithoutUserException signal: 'All Chart Definitions must be created by a user'].
	aBpmChartDefinition bpmEnvironment ifNil: [ChartDefinitionWithoutEnvironmentException signal: 'All Chart Definitions must have aBpmEnvironment']. 
 
	(userChartDefinitions includesKey: aBpmChartDefinition repositoryKey) ifFalse: [^aBlock value].

	^(userChartDefinitions at: aBpmChartDefinition repositoryKey) remove: aBpmChartDefinition ifAbsent: [^aBlock value]