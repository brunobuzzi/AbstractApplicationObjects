other
testProcessFieldValueCollectionAdd

	valueHolder := AppFieldValueHolder newWithConvertionFor: nil forFieldNamed: 'id'.

	valueHolder processFieldValueCollection: #('1' '2' '4' '6') withFieldClass: AppFieldNumberValue in: nil.

	self assert: valueHolder currentValues size equals: 4.

	#(1 2 4 6) do: [:num | self assert: (valueHolder currentValues anySatisfy: [:fieldValue | fieldValue value = num])].

	valueHolder processFieldValueCollection: #('1' '2' '4' '6' '9') withFieldClass: AppFieldNumberValue in: nil.

	#(1 2 4 6 9) do: [:num | self assert: (valueHolder currentValues anySatisfy: [:fieldValue | fieldValue value = num])].

	self assert: valueHolder currentValues size equals: 5.
	self assert: valueHolder toAdd size equals: 1.
	self assert: valueHolder toRemove size equals: 0.