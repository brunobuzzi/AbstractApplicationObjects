other
raiseIncorrectClassResultExceptionIn: anAppObject errorBlock: aBlock evaluationResult: anAppCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <EvaluationIncorrectClassException>.
	Answer <anAppCodeEvaluationResult>"

	AppEvaluationIncorrectClassException new 
		exceptionObject: anAppObject; 
		exceptionBlock: aBlock;
		blockSource: aBlock blockSource;
		evaluationResult: anAppCodeEvaluationResult;
		signal: 'Block Result is of incorrect class';
		yourself.

	^anAppCodeEvaluationResult