other
setValue: newValue
   "Modify the value of the instance variable 'value'."

	newValue ifNil: [^value := newValue].
	originalValueIsStObject ifTrue: [^value := newValue].

	newValue ifEmpty: [^value := nil].

	[value := Time fromString: newValue] 
		on: Error do:[:err | errorString := err description.
									FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Time'].

	^value