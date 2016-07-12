other
initialize

	super initialize.

	currentValues := OrderedCollection new.
	toAdd := OrderedCollection new.
	toRemove := OrderedCollection new.
	alreadyAddedToFormDefinition := false.
	alreadyAddedToProcessDefinition := false.
" 
fieldName			- name of the field that the receiver is holding.
currentValues		- a collection of FormFieldValue with the current values of the form.
toAdd 				- elements added in this edition. (if NOT empty --> <toRemove> is empty)
toRemove			- elements removed in this edition. (if NOT empty --> <toAdd> is empty)
alreadyProcessed	- whether or not the receiver has been processed. 
"