queries
getGlobalReports

	^reports select: [:each | each isGlobal]