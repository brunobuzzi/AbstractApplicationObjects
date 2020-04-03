evaluation
raiseNonBlockExceptionIn: anAppObject errorBlock: aBlock evaluationResult: anAppCodeEvaluationResult
	"The receiver raise a proper exception that is handled in #defaultAction method of <AppEvaluationNotBlockException>.
	Answer <anAppCodeEvaluationResult>"
	| exception |

	exception := AppEvaluationNotBlockException new 
		exceptionObject: anAppObject; 
		blockSource: aBlock; "<aBlock> is not a Smalltalk <BlockClosure> (is anObject) --> the use of #exceptionBlock: is avoided (because #exceptionBlock: send #blockSource to the block)"
		evaluationResult: anAppCodeEvaluationResult;
		signal: 'Condition is not a Block';
		yourself.

	anAppCodeEvaluationResult exception: exception.

	^anAppCodeEvaluationResult