connection
openConnection

	osProcess := GsHostProcess fork: self prepareConnectionString.

	^osProcess stderrReadAllAvailableInPipe