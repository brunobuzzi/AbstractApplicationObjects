distributions
createSecondayDistributionByYear
	| yearDistribution |

	xAxisIsDate ifFalse: [DistributionKeysException signal: 'Keys of the Distribution are not valid Dates'].

	yearDistribution := OrderPreservingDictionary new.

	self distributionKeysAndValuesDo: [:stringDateKey :numberValue | | currentDate newKey sumValue |
		currentDate := [Date fromString: stringDateKey] on: Error do: [DistributionKeysException signal: '[', stringDateKey, '] is not a valid Date'].
		newKey := currentDate year printString.
		sumValue := (yearDistribution includesKey: newKey) 
			ifTrue: [yearDistribution at: newKey] 
			ifFalse: [0].
		yearDistribution at: newKey put: (sumValue + numberValue)
	].

	^yearDistribution