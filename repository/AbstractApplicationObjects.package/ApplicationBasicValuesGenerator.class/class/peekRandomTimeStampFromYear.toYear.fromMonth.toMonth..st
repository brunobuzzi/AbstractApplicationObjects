time stamp generator
peekRandomTimeStampFromYear: startYear toYear: endYear fromMonth: startMonth toMonth: endMonth

	^TimeStamp date: (self peekRandomDateFromYear: startYear toYear: endYear fromMonth: startMonth toMonth: endMonth) time: self peekRandomTime