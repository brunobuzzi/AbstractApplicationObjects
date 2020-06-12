cache orbeon
getOrbeonCache

	^self selectInCache: [:each | each isOrbeonApplication]