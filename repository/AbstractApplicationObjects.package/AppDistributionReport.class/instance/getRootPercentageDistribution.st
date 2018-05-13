other
getRootPercentageDistribution
	| percentageDistribution total |

	percentageDistribution := OrderPreservingDictionary new.
	total := rootDistribution inject: 0 into:  [:sum :each | sum + each]. 

	rootDistribution keysAndValuesDo: [:key :value | 
		percentageDistribution at: key put: (total isZero ifFalse: [(100 * value) // total] ifTrue: [0]).
	].

	^percentageDistribution