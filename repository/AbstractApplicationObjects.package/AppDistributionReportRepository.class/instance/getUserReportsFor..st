other
getUserReportsFor: userName

	^reports select: [:each | each isUser and: [each userName = userName]]