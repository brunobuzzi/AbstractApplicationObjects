other
testZipDoubleSimpleString
	| zipIntegrityString |

	AppBackup createZipFileAs: '/tmp/double.zip' contents: #('test file' 'test file 2') as: #('test.txt' 'test2.txt').

	zipIntegrityString := System performOnServer: 'unzip -t /tmp/double.zip'.

	self assert: (zipIntegrityString includesSubstring: 'No errors detected').

	System performOnServer: 'rm -f /tmp/double.zip'.
	System performOnServer: 'rm -f /tmp/test.txt'.
	System performOnServer: 'rm -f /tmp/test2.txt'.

	self deny: (GsFile existsOnServer: '/tmp/double.zip').
	self deny: (GsFile existsOnServer: '/tmp/test.txt').
	self deny: (GsFile existsOnServer: '/tmp/test2.txt').