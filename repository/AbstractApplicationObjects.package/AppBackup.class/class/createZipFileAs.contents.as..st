zip creation
createZipFileAs: pathFile contents: anArrayOfContents as: anArrayOfMembersNames
	"The receiver create a ZIP file as <pathFile> with all contents of <anArrayOfContents> where each member of the ZIP is named as in <anArrayOfMembersNames>"
	| zipArchive gsFile |

	gsFile := GsFile open: pathFile mode: 'wb' onClient: false. "actual zip file on disk"
	zipArchive := ZipArchive new. "zip generator"

	anArrayOfContents keysAndValuesDo: [:index :contents | 
		self addTo: zipArchive contents: contents as: (anArrayOfMembersNames at: index) writeTo: gsFile.
	].

	gsFile close.