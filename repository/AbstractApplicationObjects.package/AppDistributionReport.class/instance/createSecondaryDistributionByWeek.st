distributions
createSecondaryDistributionByWeek
	| weekDistribution |

	xAxisIsDate ifFalse: [DistributionKeysException signal: 'Keys of the Distribution are not valid Dates'].

	weekDistribution := OrderPreservingDictionary new.

	self distributionKeysAndValuesDo: [:stringDateKey :numberValue | | currentDate newKey sumValue weekNumber |
		currentDate := [Date fromString: stringDateKey] on: Error do: [DistributionKeysException signal: '[', stringDateKey, '] is not a valid Date'].
		weekNumber := (currentDate dayOfMonth / 7) rounded + 1.
		newKey := weekNumber printString, '.', currentDate monthName, '.', currentDate year printString.
		sumValue := (weekDistribution includesKey: newKey) 
			ifTrue: [weekDistribution at: newKey] 
			ifFalse: [0].
		weekDistribution at: newKey put: (sumValue + numberValue)
	].

	^secondaryDistributions at: 'Week' put: weekDistribution