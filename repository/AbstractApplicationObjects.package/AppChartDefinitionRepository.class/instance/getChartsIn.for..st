query
getChartsIn: aBpmEnvironment for: aBpmUser

	^userChartDefinitions at: (aBpmEnvironment name, '.', aBpmUser username) ifAbsent: [#()]