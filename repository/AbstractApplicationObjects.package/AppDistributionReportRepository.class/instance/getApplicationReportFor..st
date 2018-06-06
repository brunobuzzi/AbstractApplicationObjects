queries
getApplicationReportFor: appName

	^reports select: [:each | each isApplication and: [each applicationName = appName]]