other
testProcessStFieldValueCollection

	valueHolder := AppFieldValueHolder parentObject: nil forFieldNamed: 'id'.

	valueHolder processFieldValueCollection: (OrderedCollection with: 1 with: 2 with: 4 with: 6) withFieldClass: AppFieldNumberValue in: nil isStObject: true.

	self assert: valueHolder currentValues size equals: 4.

	(OrderedCollection with: 1 with: 2 with: 4 with: 6) do: [:num | self assert: (valueHolder currentValues anySatisfy: [:fieldValue | fieldValue value = num])]