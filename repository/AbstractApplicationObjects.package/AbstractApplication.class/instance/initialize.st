other
initialize

	super initialize.

	frontofficeRoles := RcIdentityBag new.
	backofficeRoles := RcIdentityBag new.
	processesDefinitions := Dictionary new.
	availableTasksMatrix := BpmAvailableTasksMatrix newOn: self.
	finishedTasksMatrix := BpmFinishedTasksMatrix newOn: self.
	takenTasksMatrix := BpmTakenTasksMatrix newOn: self.