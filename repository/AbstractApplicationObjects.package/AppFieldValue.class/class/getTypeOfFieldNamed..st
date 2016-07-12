other
getTypeOfFieldNamed: nameWithType
	"The receiver answer a Smalltalk class with the type of the field named <nameWithType>.
	The type is already embedded in the string <nameWithType> "

	^(self subclasses detect: [:each | (nameWithType indexOfSubCollection: each typeAbbreviation) ~= 0] ifNone: [^nil]) stType