Class {
	#name : #SLTile,
	#superclass : #Object,
	#instVars : [
		'position',
		'players'
	],
	#category : #SnakesAndLadders
}

{ #category : #adding }
SLTile >> addPlayer: aSLPlayer [ 
	self shouldBeImplemented.
]

{ #category : #initialization }
SLTile >> initialize [ 
	super initialize.
	players:=OrderedCollection new
]

{ #category : #acessing }
SLTile >> player [
	self shouldBeImplemented.
]

{ #category : #accessing }
SLTile >> player: aSLPlayer [ 
	players add: aSLPlayer 
]

{ #category : #accessing }
SLTile >> players [
	^ players
]

{ #category : #accessing }
SLTile >> playersIncludes: aSLPlayer [ 
	self haltIf: [thisContext sender printString = 'SLTile>>playersIncludes:'].
	^ self players includes: aSLPlayer
]

{ #category : #accessing }
SLTile >> position: anInteger [ 
	position := anInteger
]

{ #category : #printing }
SLTile >> printInside: aLimitedWriteStream [ 
	self players do: [ :each | each printOn: aLimitedWriteStream ]
]

{ #category : #printing }
SLTile >> printOn: aStream [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| temporary variable names |
	"super printOn: aStream"
	aStream nextPut: $[.
	aStream nextPutAll: position asString .
	self printInside: aStream.
	aStream nextPut: $].
	
]
