instance creation
newOn: anAppFieldValueHolder parentObject: anObject name: stringName value: stringValue originalValue: originalValue

	^super new initialize
		holder: anAppFieldValueHolder;
		parentObject: anObject;
		name: stringName;
		setValue: stringValue;
		originalValue: originalValue;
		yourself