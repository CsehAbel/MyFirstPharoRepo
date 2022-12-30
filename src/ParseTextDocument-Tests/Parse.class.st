Class {
	#name : #Parse,
	#superclass : #Object,
	#category : #'ParseTextDocument-Tests'
}

{ #category : #instantiation }
Parse class >> documentClasses [
	| col |
	col:=DocumentItem allSubclasses.
	col:=col sort: [ :class1 :class2|class1 priority<class2 priority ].
	^col
]

{ #category : #instantiation }
Parse class >> instantiateAccording: aString [ 
	(self documentClasses) do: [ :each | (each canParse: aString) ifTrue: [^each newFromLine: aString]]
]
