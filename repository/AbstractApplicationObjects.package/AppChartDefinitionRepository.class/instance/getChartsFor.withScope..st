other
getChartsFor: aBpmUser withScope: aBpmChartScopeClass

	^(self getChartsFor: aBpmUser) select: [:each | each scope class == aBpmChartScopeClass]