processes
removeAllProcessesDefinitions
	"Remove all defined <BpmProcessDefinition> and unassign roles from process's artifacts"

	processesDefinitions do: [:procCollection | 
		procCollection do: [:eachProc | 
			eachProc getAllArtifacts do: [:eachArt | eachArt ungrantAllRoles]. "remove tasks from roles"
		].
	].