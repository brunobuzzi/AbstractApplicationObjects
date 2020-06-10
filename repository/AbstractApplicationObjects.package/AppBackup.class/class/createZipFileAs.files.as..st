zip creation
createZipFileAs: pathFile files: anArrayOfFileNames as: anArrayOfMembersNames
	"The receiver create a ZIP file as <pathFile> with all contents of <anArrayOfFileNames> where each member of the ZIP is named as in <anArrayOfMembersNames>"
	| arrayOfContents |

	arrayOfContents := OrderedCollection new.

	anArrayOfFileNames do: [:each | | gsFile |
		gsFile := GsFile open: each mode: 'r' onClient: false.
		arrayOfContents add: gsFile contents.
		gsFile close.
	]. 

	self createZipFileAs: pathFile on: ZipArchive new contents: arrayOfContents asArray as: anArrayOfMembersNames