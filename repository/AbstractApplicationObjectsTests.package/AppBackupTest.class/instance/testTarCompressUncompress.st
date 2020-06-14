other
testTarCompressUncompress

	System performOnServer: 'mkdir -p "/tmp/tmp" && touch "/tmp/tmp/test.txt"'.
	System performOnServer: 'mkdir -p "/tmp/tmp/tmp" && touch "/tmp/tmp/tmp/test.txt"'.

	self assert: (GsFile existsOnServer: '/tmp/tmp/test.txt').
	self assert: (GsFile existsOnServer: '/tmp/tmp/tmp/test.txt').

	AppBackup createTarFileAs: '/tmp/tar-tmp.tar' compress: '/tmp/tmp'.

	self assert: (GsFile existsOnServer: '/tmp/tar-tmp.tar').

	System performOnServer: 'rm -r /tmp/tmp'.

	self deny: (GsFile existsOnServer: '/tmp/tmp/test.txt').
	self deny: (GsFile existsOnServer: '/tmp/tmp/tmp/test.txt').

	AppBackup uncompressTarFile: '/tmp/tar-tmp.tar' to: '/'.

	self assert: (GsFile existsOnServer: '/tmp/tmp/test.txt').
	self assert: (GsFile existsOnServer: '/tmp/tmp/tmp/test.txt').

	System performOnServer: 'rm -r /tmp/tmp'.
	System performOnServer: 'rm -f /tmp/tar-tmp.tar'.

	self deny: (GsFile existsOnServer: '/tmp/tmp').
	self deny: (GsFile existsOnServer: '/tmp/tar-tmp.tar').