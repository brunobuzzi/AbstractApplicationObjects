other
testConvertValue

	self assert: (AppFieldTimeStampValue convertToStValue: '2016-10-10T12:00') equals: (TimeStamp fromString: '10/10/2016 12:00').

	self assert: (AppFieldTimeStampValue convertToStValue: '2017-11-11T12:45') equals: (TimeStamp fromString: '11/11/2017 12:45').

	self should: [[AppFieldTimeStampValue convertToStValue: 'hello'] on: Exception do:[:ex | ex pass]] raise: FieldValueConvertionException