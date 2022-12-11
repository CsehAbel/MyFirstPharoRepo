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
