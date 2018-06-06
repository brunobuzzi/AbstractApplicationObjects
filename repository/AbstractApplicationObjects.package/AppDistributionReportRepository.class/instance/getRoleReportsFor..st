queries
getRoleReportsFor: appName

	^reports select: [:each | each isRole and: [each applicationName = appName]]