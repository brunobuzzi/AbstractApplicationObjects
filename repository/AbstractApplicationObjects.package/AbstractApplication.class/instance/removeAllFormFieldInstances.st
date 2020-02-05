processes
removeAllFormFieldInstances
	"Remove ALL instances of <AppFieldValue> from each <BpmProcessDefinition>."

	processesDefinitions do: [:processesCollection | 
		processesCollection do: [:processDefinition | 
			processDefinition formFieldInstances: Dictionary new. "remove all form field instances"
		].
	].