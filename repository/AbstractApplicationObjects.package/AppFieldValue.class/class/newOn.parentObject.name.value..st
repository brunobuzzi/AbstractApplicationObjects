instance creation
newOn: anAppFieldValueHolder parentObject: anObject name: stringName value: stringValue

	^super new initialize
		holder: anAppFieldValueHolder;
		parentObject: anObject;
		name: stringName;
		setValue: stringValue;
		yourself