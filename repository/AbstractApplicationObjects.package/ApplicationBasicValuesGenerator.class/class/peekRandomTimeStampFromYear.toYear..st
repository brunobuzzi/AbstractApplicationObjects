time stamp generator
peekRandomTimeStampFromYear: startYear toYear: endYear

	^TimeStamp date: (self peekRandomDateFromYear: startYear toYear: endYear) time: self peekRandomTime