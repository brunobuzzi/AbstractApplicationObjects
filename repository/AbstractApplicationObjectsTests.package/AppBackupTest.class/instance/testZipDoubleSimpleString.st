other
testZipDoubleSimpleString
	| zipIntegrityString |

	AppBackup createZipFileAs: '/tmp/double.zip' contents: #('test file' 'test file 2') as: #('test.txt' 'test2.txt').

	zipIntegrityString := System performOnServer: 'unzip -t /tmp/double.zip'.

	self assert: (zipIntegrityString includesSubstring: 'No errors detected')