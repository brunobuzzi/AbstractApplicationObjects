small zip creation
addTo: aZipArchive contents: contents as: memberName writeTo: aGsFile
	"The receiver:
	1) Create a in memory Stream <inMemoryStream>.
	2) Create a ZIP member <member> with contents <contents>.
	3) Write all ZIP members to in memory Stream <inMemoryStream>.
	4) Flush in memory Stream to disk file <aGsFile>"
	| inMemoryStream member |

	inMemoryStream := RWBinaryOrTextStream on: String new. "create in memory <Stream>"
	member := aZipArchive addString: contents as: memberName. "create ZIP member"

	member desiredCompressionMethod: ZipArchive compressionDeflated. 

	aZipArchive writeTo: inMemoryStream. "write ZIP members to <inMemoryStream>"
 
	aGsFile nextPutAll: inMemoryStream contents. "write to file disk the contents of <inMemoryStream>"