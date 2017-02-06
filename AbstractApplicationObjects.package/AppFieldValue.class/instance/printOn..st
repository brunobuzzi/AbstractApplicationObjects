other
printOn: aStream
	| tempValue |

	super printOn: aStream.

	tempValue := (originalValue class == String) ifTrue: [originalValue] ifFalse: [originalValue printString].
	
	aStream nextPutAll: '[', tempValue, ']'