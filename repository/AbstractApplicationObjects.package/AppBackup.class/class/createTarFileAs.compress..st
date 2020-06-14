big zip creation
createTarFileAs: pathFile compress: folderToCompress

	System performOnServer: 'tar -czvf ', pathFile, ' ', folderToCompress