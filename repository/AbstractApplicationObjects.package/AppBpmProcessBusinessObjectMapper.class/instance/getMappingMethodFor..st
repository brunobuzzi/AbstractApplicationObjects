mapping methods
getMappingMethodFor: anOrbeonFormInstance

	^self getMappingMethodFor: anOrbeonFormInstance ifAbsent: [MiemMappingNotFoundException signal]