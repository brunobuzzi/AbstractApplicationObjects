update operations
updateAndRemoveCurrentFieldValuesWith: fieldValueCollection
	"[currentValues size > fieldValueCollection size].
	Field Values in the form has been removed --> remove these leftover fields from the OrbeonFormProcessDefinition index collection.
	To do this we add these object to <toRemove> collection to be removed later."

	toRemove := currentValues copyFrom: (fieldValueCollection size + 1) to: currentValues size. "elements to remove"

	currentValues :=  fieldValueCollection isEmpty 
		ifTrue: [OrderedCollection new] "if the new collection of value is empty --> all elements has been removed --> currentValues is empty"
		ifFalse: [currentValues copyFrom: 1 to: fieldValueCollection size.]. "collection with only <fieldValueCollection> elements"
	 

	self updateEqualCurrentFieldValuesWith: fieldValueCollection. "update FormFieldValues"