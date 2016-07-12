other
parentObject: anObject name: stringName value: stringValue originalValue: originalValue isStObject: aBoolean

	^super new initialize
		parentObject: anObject;
		name: stringName;
		originalValueIsStObject: aBoolean;
		setValue: stringValue;
		originalValue: originalValue;
		yourself