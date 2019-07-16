other
newWithConvertionFor: stIntegrationObjectOrOrbeonForm forFieldNamed: aString
	"Answer a new instance of the receiver where convertion (string >> ST Object) is performed.
	When <anAppFieldValue> is added to the receiver #convertValue: IS used."

	^super new initialize
		parentObject: stIntegrationObjectOrOrbeonForm;
		fieldName: aString;
		originalValueIsStObject: false;
		yourself