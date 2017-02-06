other
getProcessReportFor: processName in: appName

	^reports select: [:each | (each isProcess and:[each isField not]) and: [each applicationName = appName and:[each processName = processName]]]