date generator
peekRandomDateFromYear: startYear toYear: endYear fromMonth: startMonth toMonth: endMonth
	| random day month year |

	random := Random new.
	day := random integerBetween: 1 and: 28.
	month := random integerBetween: startMonth and: endMonth.
	year := random integerBetween: startYear and: endYear.

	^Date newDay: day monthNumber: month year: year