query
getChartsIn: aBpmEnvironment for: aBpmUser withScope: aBpmChartScopeClass

	^self getChartsIn: aBpmEnvironment for: aBpmUser withScope: aBpmChartScopeClass satisfying: [:e | true]