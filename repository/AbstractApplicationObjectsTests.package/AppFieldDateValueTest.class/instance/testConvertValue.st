other
testConvertValue

	self assert: (AppFieldDateValue convertToStValue: '2016-10-10') equals: (Date fromString: '10/10/2016').

	self assert: (AppFieldDateValue convertToStValue: '2017-11-11') equals: (Date fromString: '11/11/2017').

	self should: [[AppFieldDateValue convertToStValue: 'hello'] on: Exception do:[:ex | ex pass]] raise: FieldValueConvertionException