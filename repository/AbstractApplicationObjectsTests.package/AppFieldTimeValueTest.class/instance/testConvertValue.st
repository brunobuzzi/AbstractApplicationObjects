other
testConvertValue

	self assert: (AppFieldTimeValue convertToStValue: '12:00') equals: (Time fromString: '12:00').

	self assert: (AppFieldTimeValue convertToStValue: '12:45') equals: (Time fromString: '12:45').

	"there is a GemStone bug here see:
	http://forum.world.st/Exception-converting-aString-to-Time-td5098910.html
	https://github.com/GsDevKit/GsDevKit/issues/115
	this should fail"

	self should: [[AppFieldTimeValue convertToStValue: 'hello'] on: Exception do:[:ex | ex pass]] raise: FieldValueConvertionException