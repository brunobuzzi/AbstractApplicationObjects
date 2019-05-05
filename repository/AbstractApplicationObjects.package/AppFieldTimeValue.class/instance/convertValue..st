other
convertValue: newValue
	"The receiver concert the <String> value <newValue> to the corresponding Smalltalk object (Time)"

	[value := Time fromString: newValue] 
	on: Error 
	do:[:err | errorString := err description.
				FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Time'].