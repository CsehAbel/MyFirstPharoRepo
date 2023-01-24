Class {
	#name : #TestMe,
	#superclass : #TestCase,
	#category : #'SnakesAndLadders-Test'
}

{ #category : #tests }
TestMe >> testAddPlayer [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| aGame aPlayer |
	aGame:=SLGame withTiles: 12.
	aPlayer:= SLPlayer new name: 'Jack'.
	aGame addPlayer: aPlayer.
	self assert: (( aGame tileAt: 1 ) players includes:  aPlayer)
]

{ #category : #tests }
TestMe >> testGameInitialization [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| aGame |
	aGame:=SLGame withTiles: 12.
	self assert: aGame tileNumber equals: 12.
	self assert: aGame printString equals: '[1][2][3][4][5][6][7][8][9][10][11][12]'
]

{ #category : #tests }
TestMe >> testPrintingSimpleGameWithPlayers [
	| aGame jack |
	aGame = SLGame withTiles: 12.
	jack:=SLPlayer new name: 'Jack' .
	jack:=SLPlayer new name: 'Jill' .
	self assert: aGame printString equals:'[1<Jill><Jack>][2][3][4][5][6][7][8][9][10][11][12]'.
]

{ #category : #tests }
TestMe >> testSeveralPlayersAtStart [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| aGame aPlayer aPlayer2 |
	aGame:=SLGame withTiles: 12.
	aPlayer:= SLPlayer new name: 'Jack'.
	aPlayer2:= SLPlayer new name: 'Jill'.
	aGame addPlayer: aPlayer.
	aGame addPlayer: aPlayer2.
	self assert: (( aGame tileAt: 1 ) playersIncludes:  aPlayer).
	self assert: (( aGame tileAt: 1 ) playersIncludes:  aPlayer2)
]

{ #category : #tests }
TestMe >> testTileAt [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| aGame |
	aGame:=SLGame withTiles: 12.
	self assert: ( aGame tileAt: 6 ) printString equals: '[6]'
]
