Class {
	#name : #SLGame,
	#superclass : #Object,
	#instVars : [
		'tiles',
		'players'
	],
	#category : #SnakesAndLadders
}

{ #category : #'as yet unclassified' }
SLGame class >> withTiles: aNumber [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	| aGame collection |
	aGame:=self new.
	collection:= OrderedCollection new.
	1 to: aNumber do: [ :each | collection add: (SLTile new position: each)].
	aGame tiles: collection.
	^aGame
	 
]

{ #category : #adding }
SLGame >> addPlayer: aSLPlayer [ 
	players add: aSLPlayer.
	(tiles at: 1) player: aSLPlayer 
]

{ #category : #initialization }
SLGame >> initialize [ 

	super initialize.
	players:= OrderedCollection new
]

{ #category : #printing }
SLGame >> printOn: aStream [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| composed |
	composed:=''.
	tiles do: [ :each | each printOn: aStream  ].
	
	
	
]

{ #category : #accessing }
SLGame >> tileAt: anInteger [ 
	^ self tiles at: anInteger
]

{ #category : #testing }
SLGame >> tileNumber [
	^ self tiles size
]

{ #category : #accessing }
SLGame >> tiles [
	^ tiles
]

{ #category : #accessing }
SLGame >> tiles: aCollection [ 
	tiles := aCollection
]
