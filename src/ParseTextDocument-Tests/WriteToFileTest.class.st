Class {
	#name : #WriteToFileTest,
	#superclass : #TestCase,
	#category : #'ParseTextDocument-Tests'
}

{ #category : #tests }
WriteToFileTest >> testWriteStream [

	| dir path ws rs |
	dir:=FileSystem  disk workingDirectory.
	path:=(dir / 'documentToParse.txt').
	ws:=path writeStream.
	ws nextPutAll: '^iAmTitleLine'.
	ws nextPut: Character cr.
	ws nextPutAll: '-iamListitem'.
	ws nextPut: Character cr.
	ws nextPutAll: '--iamSubListItem2'.
	self halt.
	ws close.
	rs:=path readStream.
	rs contents.
	self halt.
]
