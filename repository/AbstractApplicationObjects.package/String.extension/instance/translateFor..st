*abstractApplicationObjects
translateFor: userObject

	userObject ifNil: [^self].

	^userObject systemRoot getTranslationFor: self in: userObject languageName