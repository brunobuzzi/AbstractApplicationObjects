other
convertValue: newValue
	"The receiver concert the <String> value <newValue> to the corresponding Smalltalk object (TimeStamp)"

	[value := TimeStamp fromOrbeonString: newValue] 
	on: Exception 
	do:[:err | errorString := err description.
				FieldValueConvertionException signal: 'Error converting [', newValue, '] to a TimeStamp'].