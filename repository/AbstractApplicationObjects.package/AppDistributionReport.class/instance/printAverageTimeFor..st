other
printAverageTimeFor: anAppUser
	| averageTime |

	averageTime := self getAverageTimeAsSeconds.

	(averageTime < 60) ifTrue: [^averageTime printString, (' seconds' translateFor: anAppUser)]. 
	averageTime := (averageTime / 60) asFixedPoint: 2.

	(averageTime < 60) ifTrue: [^averageTime printString, (' minutes' translateFor: anAppUser)].
	averageTime := (averageTime / 60) asFixedPoint: 2.

	(averageTime < 24) ifTrue: [^averageTime printString, (' hours' translateFor: anAppUser)].
	averageTime := (averageTime / 24) asFixedPoint: 2.

	^averageTime printString, (' days' translateFor: anAppUser)