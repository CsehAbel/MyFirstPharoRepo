Class {
	#name : #ListItem,
	#superclass : #DocumentItem,
	#instVars : [
		'content'
	],
	#category : #'ParseTextDocument-Tests'
}

{ #category : #testing }
ListItem class >> canParse: line [
	| res |
	res:=''.
	res:= res , (line at: 1) asString.
	^ res = '-'
	
]

{ #category : #instantiation }
ListItem class >> newFromLine: aString [ 
	^self new content: aString; yourself
]

{ #category : #accessing }
ListItem class >> priority [
	^2
]

{ #category : #setting }
ListItem >> content: aString [ 
	content:=aString
]
