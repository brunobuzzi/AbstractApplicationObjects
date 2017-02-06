other
initializeCache

	Cache := Dictionary new.

	"the default application"
	((Smalltalk at: #BpmApplication ifAbsent: [Smalltalk at: #OrbeonApplication]) newNamed: 'admins') addToCache.

	^Cache