processes instances
getAllProcessInstances
	"The receiver answer all processes instances <aBpmProcessInstance>"
	| allInstances |

	allInstances := Set new.

	processesDefinitions do: [:definitionCollection | 
		definitionCollection do: [:procDefinition | 
			procDefinition processInstancesSetDo: [:eachInstance | allInstances add: eachInstance]]. 
	]. 

	^allInstances