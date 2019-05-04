update operations
updateAndAddCurrentFieldValuesWith: fieldValueCollection fieldClass: formFieldValueClass form: anOrbeonFormInstance
	"[currentValues size < fieldValueCollection size]
	Field Values in the form has been add --> we have to create and add FormFieldValues to the <currentValues> collection.
	Then we have to add these new object <FormFieldValue> to the OrbeonFormProcessDefinition index collection.
	To do this we add these object to <toAdd> collection to be added later."

	"create the new neccesary objects with class type <formFieldValueClass> and add it to <toAdd> and <currentValues>"
	1 to: (fieldValueCollection size - currentValues size) do:[:index | | newFormFieldValue | 
		newFormFieldValue := formFieldValueClass parentObject: anOrbeonFormInstance name: fieldName value: nil.
		newFormFieldValue originalValueIsStObject: true. "see issue #208"
		toAdd add: newFormFieldValue.
		currentValues add: newFormFieldValue].

	self updateEqualCurrentFieldValuesWith: fieldValueCollection. "update FormFieldValues"