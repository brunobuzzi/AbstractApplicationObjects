queries
getProcessReportFor: appName

	^reports select: [:each | each isProcess and: [each applicationName = appName]]