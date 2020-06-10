zip creation
createZipFileAs: pathFile on: aZipArchive contents: anArrayOfContents as: anArrayOfMembersNames
	"The receiver create a ZIP file as <pathFile> with all contents of <anArrayOfContents> where each member of the ZIP is named as in <anArrayOfMembersNames>"
	| gsFile |

	gsFile := GsFile open: pathFile mode: 'wb' onClient: false. "actual zip file on disk"

	anArrayOfContents keysAndValuesDo: [:index :contents | 
		self addTo: aZipArchive contents: contents as: (anArrayOfMembersNames at: index) writeTo: gsFile.
	].

	gsFile close.