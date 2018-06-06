adding removing
removeSavedReport: anAppSavedDistributionReport ifAbsent: aBlock

	^reports remove: AppSavedDistributionReport ifAbsent: aBlock