other
hasCurrentValue: aValue

	^currentValues anySatisfy: [:each | each value = aValue]