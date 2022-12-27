Class {
	#name : #TitleItem,
	#superclass : #DocumentItem,
	#instVars : [
		'content'
	],
	#category : #'ParseTextDocument-Tests'
}

{ #category : #testing }
TitleItem class >> canParse: line [
"parse a line containing a TitleItem"
	^(line at:1) = $^
]

{ #category : #instantiation }
TitleItem class >> newFromLine: aString [ 
	^self new content: aString;
	yourself
	
]

{ #category : #accessing }
TitleItem class >> priority [
	^3
]

{ #category : #setting }
TitleItem >> content: aString [ 
	content:=aString.
]
