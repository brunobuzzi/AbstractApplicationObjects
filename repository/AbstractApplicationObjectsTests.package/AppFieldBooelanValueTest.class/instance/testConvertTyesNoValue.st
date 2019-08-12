other
testConvertTyesNoValue

	self assert: (AppFieldBooelanValue convertToStValue: 'yes') equals: true.

	self assert: (AppFieldBooelanValue convertToStValue: 'no') equals: false.

	self should: [AppFieldBooelanValue convertToStValue: 'hello'] raise: FieldValueConvertionException