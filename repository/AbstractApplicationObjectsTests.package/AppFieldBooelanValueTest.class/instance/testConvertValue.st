other
testConvertValue

	self assert: (AppFieldBooelanValue convertToStValue: 'true') equals: true.

	self assert: (AppFieldBooelanValue convertToStValue: 'false') equals: false.

	self should: [AppFieldBooelanValue convertToStValue: 'hello'] raise: FieldValueConvertionException