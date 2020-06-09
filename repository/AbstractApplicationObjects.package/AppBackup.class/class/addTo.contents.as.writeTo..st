zip creation
addTo: aZipArchive contents: contents as: memberName writeTo: aGsFile
	|  inMemoryStream member |

	inMemoryStream := RWBinaryOrTextStream on: String new. "create in memory <Stream>"
	member := aZipArchive addString: contents as: memberName. "create ZIP member"

	member desiredCompressionMethod: ZipArchive compressionDeflated. 

	aZipArchive writeTo: inMemoryStream. "write ZIP members to <inMemoryStream>"
 
	aGsFile nextPutAll: inMemoryStream contents. "write to file disk the contents of <inMemoryStream>"