functions
getAverageTimeAsSeconds

	self getRootDistributionSize isZero ifTrue: [^0].
 
	^(self getTotalValue / self getRootDistributionSize) asFixedPoint: 2