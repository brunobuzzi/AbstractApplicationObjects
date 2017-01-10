csv
importCSVFile: pathFile
	"The receiver import a translation file from CSV file <pathFile>.
	Format:
	Target Translation (tab) English (tab) Spanish .....
	Application (tab) Application (tab) Aplicación"
	| fileStream traslationArray headers |

	fileStream := FileStream read: pathFile.
	traslationArray := fileStream contents subStrings: String lf.
	traslationArray ifEmpty: [^AppInternationalizationException signal: 'Bad header translation format'].
	headers := traslationArray first subStrings: $;.

	traslationArray allButFirst do: [:row | | rowContent targetTranslation |
		rowContent := row subStrings: $;.
		rowContent ifEmpty: [^AppInternationalizationException signal: 'Bad cell content translation format'].
		targetTranslation := rowContent first.
		rowContent allButFirst keysAndValuesDo: [:columnIndex :cellContent | | language |
			language := (headers at: columnIndex + 1) trimBlanks asLowercase asSymbol.
			(cellContent notNil and: [cellContent notEmpty])
			ifTrue: [self translate: targetTranslation as: cellContent for: language].
		].
	].

	fileStream close.