update operations
processFieldValueCollection: fieldValueCollection withFieldClass: formFieldValueClass in: anOrbeonFormInstance
	"The receiver create/update the values of the field that it represent where the new values are in <fieldValueCollection> and belongs to the form <anOrbeonFormInstance> and the type of the field is <formFieldValueClass>.
	[values creation] *  if <currentValues> is empty --> create the values for the first time (never enter again -only if the values are removed from the form and <currentValues>- becomes empty again).
	[values update] * if current and new values is equal in size --> update values.
	if not --> add/remove elements so current and new values are equal in size again --> update values"
 
	toAdd := OrderedCollection new. 
	toRemove := OrderedCollection new.

	currentValues isEmpty "first time the values are processed (never processed before)"
	ifTrue: [^fieldValueCollection do: [:eachValue | | fieldValue |
					fieldValue := formFieldValueClass newOn: self parentObject: anOrbeonFormInstance name: fieldName value: eachValue. "Create aAppFieldValue"
					currentValues add: fieldValue]
	].

	"we only need to update current values with the newones in <fieldValueCollection>"
	(currentValues size = fieldValueCollection size) 
	ifTrue: [^self updateEqualCurrentFieldValuesWith: fieldValueCollection].

	"we have to remove some objects <FormFieldValue> and then update current values"
	(currentValues size > fieldValueCollection size) 
	ifTrue: [^self updateAndRemoveCurrentFieldValuesWith: fieldValueCollection].

	"we have to add some objects <FormFieldValue> and the update current values"
	(currentValues size < fieldValueCollection size) 
	ifTrue: [^self updateAndAddCurrentFieldValuesWith: fieldValueCollection fieldClass: formFieldValueClass form: anOrbeonFormInstance].