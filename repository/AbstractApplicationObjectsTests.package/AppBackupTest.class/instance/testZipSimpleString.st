other
testZipSimpleString
	| zipIntegrityString |

	AppBackup createZipFileAs: '/tmp/simple.zip' contents: #('test file') as: #('test.txt').

	zipIntegrityString := System performOnServer: 'unzip -t /tmp/simple.zip'.

	self assert: (zipIntegrityString includesSubstring: 'No errors detected')