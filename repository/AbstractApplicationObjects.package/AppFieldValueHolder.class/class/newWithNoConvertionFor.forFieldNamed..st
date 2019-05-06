other
newWithNoConvertionFor: stIntegrationObjectOrOrbeonForm forFieldNamed: aString

	^super new initialize
		parentObject: stIntegrationObjectOrOrbeonForm;
		fieldName: aString;
		originalValueIsStObject: true;
		yourself