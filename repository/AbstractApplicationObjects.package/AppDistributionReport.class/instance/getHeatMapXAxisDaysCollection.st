chart facilities
getHeatMapXAxisDaysCollection
	| xAxis |

	xAxis := OrderedCollection with: startDate.

	[xAxis last < endDate] whileTrue: [
		xAxis add: (xAxis last addDays: 7). 
	].

	^(xAxis collect: [:each | each printString]) asArray