zip creation
createZipFileAs: pathFile files: anArrayOfStreams as: anArrayOfMembersNames
	"The receiver create a ZIP file as <pathFile> with all contents of <anArrayOfContents> where each member of the ZIP is named as in <anArrayOfMembersNames>"
	| zipArchive gsFile |

	gsFile := GsFile open: pathFile mode: 'wb' onClient: false. "actual zip file on disk"
	zipArchive := ZipArchive new. "zip generator"

	anArrayOfStreams keysAndValuesDo: [:index :fileStream | 
		self addTo: zipArchive fileStream: fileStream as: (anArrayOfMembersNames at: index) writeTo: gsFile.
	].

	gsFile close.