processes instances
getAllProcessInstances
	"The receiver answer all processes instances <aBpmProcessInstance>"
	| allInstances |

	allInstances := Set new.

	processesDefinitions do: [:definitionCollection | 
		definitionCollection do: [:procDefinition | allInstances addAll: procDefinition processInstancesSet]. 
	]. 

	^allInstances