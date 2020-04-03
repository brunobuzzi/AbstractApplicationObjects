other
defaultAction
	"The receiver pause the process where the error occurred.
	<bpmProcess> usually is <aBpmProcessInstance> but with BI module it also can be <anOrbeonFormInstance>"

	evaluationResult result: false.

	exceptionObject isBpmObject ifTrue: [exceptionObject resumeProcessWithException: self]. "no user"