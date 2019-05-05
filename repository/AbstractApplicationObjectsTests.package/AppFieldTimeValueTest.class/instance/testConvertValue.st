other
testConvertValue

	self assert: (AppFieldTimeValue convertToStValue: '12:00') equals: (Time fromString: '12:00').

	self assert: (AppFieldTimeValue convertToStValue: '12:45') equals: (Time fromString: '12:45').

	self should: [[AppFieldTimeValue convertToStValue: 'hello'] on: Exception do:[:ex | ex pass]] raise: FieldValueConvertionException