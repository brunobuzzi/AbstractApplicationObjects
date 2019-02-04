Updating
password: newValue

	newValue ifEmpty: [ImproperApplicationOperationException signal: 'Password can no be an empty string !'].

	password := GRPlatform current secureHashFor: newValue