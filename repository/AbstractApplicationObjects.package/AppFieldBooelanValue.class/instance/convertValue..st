other
convertValue: newValue
	"The receiver concert the <String> value <newValue> to the corresponding Smalltalk object (True or False)"
	| booleanValue |

	booleanValue := (newValue = 'yes') ifTrue:['true'] ifFalse: [(newValue = 'no') ifTrue:['false'] ifFalse: [newValue]].

	[value := Boolean fromString: booleanValue] 
	on: Error 
	do:[:err | errorString := err description.
				FieldValueConvertionException signal: 'Error converting [', newValue, '] to a Boolean'].