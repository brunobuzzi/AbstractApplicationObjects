tasks assignments
getFinishedTaskAssignments
	| tasks |

	tasks := OrderedCollection new.

	finishedTasksMatrix rolesAndAssignment do: [:tasksAssign | tasks addAll: tasksAssign asArray]. "add tasks"

	^tasks