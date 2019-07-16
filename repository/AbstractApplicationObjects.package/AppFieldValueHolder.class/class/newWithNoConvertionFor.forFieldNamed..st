other
newWithNoConvertionFor: stIntegrationObjectOrOrbeonForm forFieldNamed: aString
	"Answer a new instance of the receiver where NO convertion (string >> ST Object) is performed.
	When <anAppFieldValue> is added to the receiver #convertValue: is NOT used."

	^super new initialize
		parentObject: stIntegrationObjectOrOrbeonForm;
		fieldName: aString;
		originalValueIsStObject: true;
		yourself