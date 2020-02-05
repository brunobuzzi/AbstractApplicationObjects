processes
getAllProcessDefinitions
	"The receiver answer all processes definitions <aBpmProcessDefinition>"

	^processesDefinitions inject: Set new into: [:all :definitionsCollection | all addAll: definitionsCollection. all]