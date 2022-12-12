"
Counter is a simple concrete class which supports incrementing and
           decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message withValue:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter >> count [
	"return the instance variable"	
	^ count
]

{ #category : #accessing }
Counter >> count: val [
	"set the instance variable's value"
	count:=val
]

{ #category : #operations }
Counter >> decrement [
	count := count - 1
]

{ #category : #operations }
Counter >> increment [
	count := count + 1
]
