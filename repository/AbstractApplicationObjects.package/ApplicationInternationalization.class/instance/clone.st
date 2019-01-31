other
clone
	"Answer a new cloned copy of the receiver with current <languagesDictionaries> copied to the new cloned instance"
	| clone |

	clone := self class new initialize.

	languagesDictionaries keysAndValuesDo: [:language :translationDictionary | 
		clone languagesDictionaries at: language put: Dictionary new.
		translationDictionary keysAndValuesDo: [:orinalString :translatedString | 
			clone translate: orinalString as: translatedString for: language
		]
	].

	^clone