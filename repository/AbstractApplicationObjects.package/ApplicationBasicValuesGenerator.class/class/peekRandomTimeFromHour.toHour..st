time generator
peekRandomTimeFromHour: startHour toHour: endHour
	| random hours minutes seconds |

	random := Random new.
	hours := random integerBetween: startHour and: endHour.
	minutes := random integerBetween: 0 and: 59.
	seconds := random integerBetween: 0 and: 59.

	^Time fromString: (hours printString,':', minutes printString,':', seconds printString)