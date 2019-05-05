other
convertValue: newValue
	"The receiver concert the <String> value <newValue> to the corresponding Smalltalk object (True or False)"

	[value := Boolean fromString: newValue] 
	on: Error 
	do:[:err | errorString := err description.
				FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Boolean'].