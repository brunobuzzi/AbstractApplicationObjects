other
printOn: aStream
	| tempValue |

	super printOn: aStream.

	tempValue := (value class == String) ifTrue: [value] ifFalse: [value printString].
	
	aStream nextPutAll: '[', tempValue, ']'