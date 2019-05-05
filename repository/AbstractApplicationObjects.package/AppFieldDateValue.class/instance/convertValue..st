other
convertValue: newValue
	"The receiver concert the <String> value <newValue> to the corresponding Smalltalk object (Date)"

	[value := Date fromOrbeonString: newValue] 
	on: Exception 
	do:[:err | errorString := err description.
				FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Date'].