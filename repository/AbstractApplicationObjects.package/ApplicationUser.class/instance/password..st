Updating
password: newValue

	newValue ifEmpty: [ImproperApplicationOperationException signal: 'Password can not be an empty string !'].

	password := newValue sha256Sum