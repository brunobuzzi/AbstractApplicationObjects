tasks assignments
getTakenTaskAssignments
	| tasks |

	tasks := OrderedCollection new.

	takenTasksMatrix rolesAndAssignment do: [:tasksAssign | tasks addAll: tasksAssign asArray]. "add tasks"

	^tasks