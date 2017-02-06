other
setValue: newValue
   "Modify the value of the instance variable 'value'."
	| cValue |

	newValue ifNil: [^value := newValue].

	originalValueIsStObject ifTrue: [^value := newValue].

	newValue ifEmpty: [^value := nil].

	cValue := ((newValue first = $+) ifTrue: [newValue allButFirst] ifFalse: [newValue]) trimBlanks.

	[value := Number readFrom: cValue] 
		on: Error do:[:err | errorString := err description.
									FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Number'].

	^value