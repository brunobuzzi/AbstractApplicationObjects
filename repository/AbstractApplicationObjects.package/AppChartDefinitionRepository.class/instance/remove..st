store
remove: aBpmChartDefinition

	^self remove: aBpmChartDefinition ifAbsent: [ChartDefinitionNotFoundException signal: 'Chart Definition not found']