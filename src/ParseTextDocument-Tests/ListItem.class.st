Class {
	#name : #ListItem,
	#superclass : #DocumentItem,
	#category : #'ParseTextDocument-Tests-ParseTextDocument-Tests'
}

{ #category : #testing }
ListItem class >> canParse: line [
	| res |
	res:=''.
	res:= res , (line at: 1) asString.
	^ res = '-'
	
]
