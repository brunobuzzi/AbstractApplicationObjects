tasks assignments
getAvailableTaskAssignments
	| tasks |

	tasks := OrderedCollection new.

	availableTasksMatrix rolesAndAssignment do: [:tasksAssign | tasks addAll: tasksAssign asArray]. "add tasks"

	^tasks