Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounter [
	"a test case, testing setter and accessor"
	|c|
	c:=Counter new.
	c count: 69.
	self assert: c count equals: 69
]

{ #category : #tests }
CounterTest >> testIncrement [
	|c|
	c:=Counter new.
	c count: 7.
	c increment; increment.
	self assert: c count equals: 9
]

{ #category : #tests }
CounterTest >> testIncrementDecrement [
	|c|
	c:=Counter new.
	c count: 7.
	c increment; increment.
	self assert: c count equals: 9
]
