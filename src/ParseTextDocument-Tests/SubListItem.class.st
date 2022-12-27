Class {
	#name : #SubListItem,
	#superclass : #DocumentItem,
	#category : #'ParseTextDocument-Tests-ParseTextDocument-Tests'
}

{ #category : #testing }
SubListItem class >> canParse: line [
	| res |
	res:='' writeStream.
	1 to:2 do: [ :i | res nextPut: (line at: i) ].
	^ res contents = '--'
]
