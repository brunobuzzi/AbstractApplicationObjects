query
getChartsIn: aBpmEnvironment for: aBpmUser withScope: aBpmChartScopeClass satisfying: aBlock

	^(self getChartsIn: aBpmEnvironment for: aBpmUser) select: [:each | (each scope class == aBpmChartScopeClass) and: [aBlock value: each]]