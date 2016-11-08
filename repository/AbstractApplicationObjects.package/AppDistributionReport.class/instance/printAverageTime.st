functions
printAverageTime
	| averageTime |

	averageTime := self getAverageTimeAsSeconds.

	(averageTime < 60) ifTrue: [^averageTime printString, ' seconds']. 

	averageTime := averageTime / 60.
	(averageTime < 60) ifTrue: [^averageTime printString, ' minutes'].
 
	averageTime := averageTime / 60.
	(averageTime < 60) ifTrue: [^averageTime printString, ' hours'].
	
	averageTime := averageTime / 24.

	^averageTime printString, ' days'