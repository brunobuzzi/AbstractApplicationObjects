distribution handlers
getDistributionToRenderFor: subDistributionName

	subDistributionName ifNil: [^rootDistribution].
	subDistributionName isEmpty ifTrue: [^rootDistribution].
	(subDistributionName = 'Day') ifTrue: [^rootDistribution].

	(subDistributionName = 'Year') ifTrue: [^self getYearDistribution].

	(subDistributionName = 'Month') ifTrue: [^self getMonthDistribution].

	(subDistributionName = 'Week') ifTrue: [^self getWeekDistribution].

	^Dictionary new