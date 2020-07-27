processes
removeAllFormFieldInstances
	"Remove ALL instances of <AppFieldValue> from each <BpmProcessDefinition>."

	processesDefinitions do: [:processesCollection | 
		processesCollection do: [:processDefinition | 
			processDefinition initializeFormFieldInstances. "remove all form field instances"
		].
	].