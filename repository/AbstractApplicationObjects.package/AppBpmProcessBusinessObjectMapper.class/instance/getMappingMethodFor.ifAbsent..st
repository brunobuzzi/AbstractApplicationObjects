mapping methods
getMappingMethodFor: anOrbeonFormInstance ifAbsent: aBlock

	^self getMappingMethods at: anOrbeonFormInstance formName ifAbsent: aBlock