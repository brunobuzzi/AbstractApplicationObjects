other
testConvertValue

	self assert: (AppFieldStringValue convertToStValue: '0') equals: '0'.

	self assert: (AppFieldStringValue convertToStValue: '1') equals: '1'.

	self assert: (AppFieldStringValue convertToStValue: 'abcdef') equals: 'abcdef'.