other
testProcessFieldValueCollectionRemove

	valueHolder := AppFieldValueHolder newWithConvertionFor: nil forFieldNamed: 'id'.

	valueHolder processFieldValueCollection: #('1' '2' '4' '6') withFieldClass: AppFieldNumberValue in: nil.

	self assert: valueHolder currentValues size equals: 4.

	#(1 2 4 6) do: [:num | self assert: (valueHolder currentValues anySatisfy: [:fieldValue | fieldValue value = num])].

	valueHolder processFieldValueCollection: #('6' '9') withFieldClass: AppFieldNumberValue in: nil.

	#(6 9) do: [:num | self assert: (valueHolder currentValues anySatisfy: [:fieldValue | fieldValue value = num])].

	self assert: valueHolder currentValues size equals: 2.
	self assert: valueHolder toAdd size equals: 0.
	self assert: valueHolder toRemove size equals: 2.