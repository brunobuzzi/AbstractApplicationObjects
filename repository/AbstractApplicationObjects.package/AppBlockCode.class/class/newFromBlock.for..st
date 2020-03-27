other
newFromBlock: aStringOrBlock for: anAppObject

	^super new initialize
		evaluationCode: aStringOrBlock;
		evaluationObject: anAppObject;
		yourself