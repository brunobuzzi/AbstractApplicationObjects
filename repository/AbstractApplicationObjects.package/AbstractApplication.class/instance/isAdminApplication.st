other
isAdminApplication

	^self isBpmApplication and: [applicationName = self class defaultAdminsName]