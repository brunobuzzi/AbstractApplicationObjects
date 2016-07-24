other
getFieldValueWith: aValue

	^currentValues detect: [:each | each value = aValue] ifNone: [nil]