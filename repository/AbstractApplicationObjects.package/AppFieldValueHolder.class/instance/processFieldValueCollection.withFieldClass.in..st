update operations
processFieldValueCollection: fieldValueCollection withFieldClass: formFieldValueClass in: anOrbeonFormInstance
	"The receiver create/update the values of the field that it represent where the new values are in <fieldValueCollection> and belongs to the form <anOrbeonFormInstance> and the type of the field is <formFieldValueClass>.
	[values creation] *  if <currentValues> is empty --> create the values for the first time (never enter again -only if the values are removed from the form and <currentValues>- becomes empty again).
	[values update] * if current and new values is equal in size --> update values.
	if not --> add/remove elements so current and new values are equal in size again --> update values"
 
	^self processFieldValueCollection: fieldValueCollection 
			withFieldClass: formFieldValueClass 
			in: anOrbeonFormInstance 
			isStObject: true "see issue #208"