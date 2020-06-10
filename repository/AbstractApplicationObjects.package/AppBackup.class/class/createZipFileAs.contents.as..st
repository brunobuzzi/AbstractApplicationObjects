zip creation
createZipFileAs: pathFile contents: anArrayOfContents as: anArrayOfMembersNames
	"The receiver create a ZIP file as <pathFile> with all contents of <anArrayOfContents> where each member of the ZIP is named as in <anArrayOfMembersNames>"

	self createZipFileAs: pathFile on: ZipArchive new contents: anArrayOfContents as: anArrayOfMembersNames