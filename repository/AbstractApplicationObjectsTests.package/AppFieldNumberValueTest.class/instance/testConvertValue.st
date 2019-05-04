other
testConvertValue

	self assert: (AppFieldNumberValue convertToStValue: '0') equals: 0.
	self assert: (AppFieldNumberValue convertToStValue: '1') equals: 1.
	self assert: (AppFieldNumberValue convertToStValue: '-1') equals: -1.
	self assert: (AppFieldNumberValue convertToStValue: '0.5') equals: 0.5.
	self assert: (AppFieldNumberValue convertToStValue: '9999999999999999999') equals: 9999999999999999999.

	self should: [[AppFieldDateValue convertToStValue: 'hello'] on: Exception do:[:ex | ex pass]] raise: FieldValueConvertionException