convert value
setValue: newValue
	"The receiver set the inst var <value> with new value argument <newValue>.
	If <newValue> is already a Smalltalk object then <value> is set directly witn no conversion.
	If <newValue> is <nil> or empty then <value> is set with <nil>.
	Finally the <String> value is converted to a Smalltalk object"

	holder originalValueIsStObject ifTrue: [^value := newValue].
	newValue ifNil: [^value := newValue].
	newValue ifEmpty: [^value := nil].

	self convertValue: newValue.

	^value

	"this values are used in Indexed Collections"