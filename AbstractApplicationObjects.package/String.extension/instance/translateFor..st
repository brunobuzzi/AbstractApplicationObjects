*abstractApplicationObjects
translateFor: userObject

	userObject ifNil: [^self].

	^self getInternationalization getTranslationFor: self in: userObject languageName