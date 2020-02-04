roles
removeRole: aBpmRole ifAbsent: aBlock
	"The receiver remove the role <aBpmRole> if absent evaluate the niladic block <aBlock>"

	^aBpmRole unregisterFromApplication: self ifAbsent: aBlock