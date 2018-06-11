query
getChartsFor: aBpmUser withScope: aBpmChartScopeClass satisfying: aBlock

	^(self getChartsFor: aBpmUser) select: [:each | (each scope class == aBpmChartScopeClass) and: [aBlock value: each]]