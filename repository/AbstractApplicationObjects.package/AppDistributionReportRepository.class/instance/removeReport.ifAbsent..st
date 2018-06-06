adding removing
removeReport: anAppDistributionReport ifAbsent: aBlock
	| savedReport |

	savedReport := reports detect: [:each | each report == anAppDistributionReport] ifNone: [^aBlock value].
 
	^reports remove: savedReport ifAbsent: aBlock