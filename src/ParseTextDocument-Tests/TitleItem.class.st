Class {
	#name : #TitleItem,
	#superclass : #DocumentItem,
	#category : #'ParseTextDocument-Tests'
}

{ #category : #testing }
TitleItem class >> canParse: line [
"parse a line containing a TitleItem"
	^line at:1 = $^
]
