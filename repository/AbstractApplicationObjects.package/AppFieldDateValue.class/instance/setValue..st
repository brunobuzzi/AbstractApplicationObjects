other
setValue: newValue
   "Modify the value of the instance variable 'value'."

	newValue ifNil: [^value := newValue].
	originalValueIsStObject ifTrue: [^value := newValue].
	newValue ifEmpty: [^value := nil].

	[value := Date fromOrbeonString: newValue] 
		on: Exception do:[:err | errorString := err description.
									FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Date'].

	^value