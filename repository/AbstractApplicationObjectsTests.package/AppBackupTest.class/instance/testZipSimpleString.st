other
testZipSimpleString
	| zipIntegrityString |

	AppBackup createZipFileAs: '/tmp/simple.zip' contents: #('test file') as: #('test.txt').

	zipIntegrityString := System performOnServer: 'unzip -t /tmp/simple.zip'.

	self assert: (zipIntegrityString includesSubstring: 'No errors detected').

	System performOnServer: 'rm -f /tmp/simple.zip'.
	System performOnServer: 'rm -f /tmp/test.txt'.

	self deny: (GsFile existsOnServer: '/tmp/simple.zip').
	self deny: (GsFile existsOnServer: '/tmp/test.txt').