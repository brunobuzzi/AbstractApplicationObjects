update operations
updateEqualCurrentFieldValuesWith: fieldValueCollection
	"[fieldValueCollection size = currentValues size]
	Iterate over new values collection <fieldValueCollection> and set the corresponding values (with it's type) on <currentValues>.
	This will cause and index reorganization in the OrbeonFormProcessDefinition collection."

	fieldValueCollection keysAndValuesDo: [:index :stringValue | (currentValues at: index) setValue: stringValue].