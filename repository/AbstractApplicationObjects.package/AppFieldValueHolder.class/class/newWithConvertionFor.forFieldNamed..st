other
newWithConvertionFor: stIntegrationObjectOrOrbeonForm forFieldNamed: aString

	^super new initialize
		parentObject: stIntegrationObjectOrOrbeonForm;
		fieldName: aString;
		originalValueIsStObject: false;
		yourself