other
setValue: newValue
   "Modify the value of the instance variable 'value'."

	newValue ifNil: [^value := newValue].
	newValue ifEmpty: [^value := nil].

	originalValueIsStObject ifTrue: [^value := newValue].

	[value := TimeStamp fromOrbeonString: newValue] 
		on: Error do:[:err | errorString := err description.
									FieldValueConvertionException signal: 'Error converting [', newValue, '] to a TimeStamp'].

	^value