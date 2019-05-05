other
convertValue: newValue
	"The receiver concert the <String> value <newValue> to the corresponding Smalltalk object (Number or subclasses)"
	| cValue |

	cValue := ((newValue first = $+) ifTrue: [newValue allButFirst] ifFalse: [newValue]) trimBlanks.

	[value := Number readFrom: cValue] 
	on: Error 
	do:[:err | errorString := err description.
				FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Number'].