processes
lastProcessesDefinitions
	"Answer a collection with all latest processes defitions <aBpmProcessDefinition>"
	| lasts |

	lasts := Set new.

	processesDefinitions do: [:eachCollection | eachCollection notEmpty ifTrue: [lasts add: eachCollection last]].

	^lasts