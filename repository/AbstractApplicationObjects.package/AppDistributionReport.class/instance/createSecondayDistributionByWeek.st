distributions
createSecondayDistributionByWeek
	| monthDistribution |

	xAxisIsDate ifFalse: [DistributionKeysException signal: 'Keys of the Distribution are not valid Dates'].

	monthDistribution := OrderPreservingDictionary new.

	self distributionKeysAndValuesDo: [:stringDateKey :numberValue | | currentDate newKey sumValue weekNumber |
		currentDate := [Date fromString: stringDateKey] on: Error do: [DistributionKeysException signal: '[', stringDateKey, '] is not a valid Date'].
		weekNumber := (currentDate dayOfMonth / 7) rounded + 1.
		newKey := weekNumber printString, '.', currentDate monthName, '.', currentDate year printString.
		sumValue := (monthDistribution includesKey: newKey) 
			ifTrue: [monthDistribution at: newKey] 
			ifFalse: [0].
		monthDistribution at: newKey put: (sumValue + numberValue)
	].

	^monthDistribution