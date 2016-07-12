csv
exportPartialCSVTranslationToFile: pathFile forApplication: appName
	| fileStream |

	fileStream := FileStream write: pathFile.
	fileStream 
		nextPutAll: (self createPartialCSVTranslationFor: appName);
		flush;
		close.