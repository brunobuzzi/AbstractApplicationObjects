query
getChartsFor: aBpmUser

	^userChartDefinitions at: aBpmUser username ifAbsent: [#()]