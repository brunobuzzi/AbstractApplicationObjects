evaluation
raiseInBlockException: anException in: anAppObject errorBlock: aBlock evaluationResult: anAppCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <AppEvaluationInBlockException>.
	Answer <anAppCodeEvaluationResult>"
	| exception |

	exception := AppEvaluationInBlockException new 
		originalException: anException;
		exceptionObject: anAppObject; 
		exceptionBlock: aBlock;
		blockSource: aBlock blockSource;
		evaluationResult: anAppCodeEvaluationResult;
		signal: 'Error during condition evaluation: ', anException description;
		yourself.

	anAppCodeEvaluationResult exception: exception.

	^anAppCodeEvaluationResult