other
initializeCache

	Cache := Dictionary new.

	"the default application"
	((Smalltalk at: #OrbeonApplication ifAbsent: [Smalltalk at: #BpmApplication]) newNamed: 'admins') addToCache.

	^Cache