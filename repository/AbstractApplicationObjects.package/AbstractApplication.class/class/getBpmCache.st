cache bpm
getBpmCache

	^self selectInCache: [:each | each isBpmApplication]