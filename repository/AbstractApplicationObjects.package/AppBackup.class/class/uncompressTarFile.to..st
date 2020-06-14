big zip creation
uncompressTarFile: pathFile to: folderToUncompress

	System performOnServer: 'tar -xzvf ', pathFile, ' -C ', folderToUncompress