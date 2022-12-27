Class {
	#name : #SubListItem,
	#superclass : #DocumentItem,
	#instVars : [
		'content'
	],
	#category : #'ParseTextDocument-Tests'
}

{ #category : #testing }
SubListItem class >> canParse: line [
	| res |
	res:='' writeStream.
	1 to:2 do: [ :i | res nextPut: (line at: i) ].
	^ res contents = '--'
]

{ #category : #instantiation }
SubListItem class >> newFromLine: aString [ 
	^self new content:aString; yourself
]

{ #category : #accessing }
SubListItem class >> priority [
	^1
]

{ #category : #setter }
SubListItem >> content: aString [ 
	content:=aString
]
