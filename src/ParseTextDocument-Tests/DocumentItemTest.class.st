Class {
	#name : #DocumentItemTest,
	#superclass : #TestCase,
	#category : #'ParseTextDocument-Tests'
}

{ #category : #tests }
DocumentItemTest >> testListItem [

	self assert: (ListItem canParse: '--s').
	self assert: (ListItem canParse: '-s').
	self deny: (ListItem canParse: 's').
	[ self deny: (ListItem canParse: '') ]
		on: Error
		do: [ Transcript show: 'An 3r0r has occured.'; cr ].
	self should: [ ListItem canParse: '' ] raise: Error
]

{ #category : #tests }
DocumentItemTest >> testParsing [
	| pwd path rs line |
	pwd:=FileSystem disk workingDirectory.
	path:=pwd / 'documentToParse.txt'.
	rs:=path readStream.
	line:=rs nextLine.
	self assert: (Parse instantiateAccording: line) class = TitleItem.
	self halt.
	line:=rs nextLine.
	self assert: (Parse instantiateAccording: line) class = ListItem.
	self halt.
	line:=rs nextLine.
	self assert: (Parse instantiateAccording: line) class = SubListItem.
	self halt
]

{ #category : #tests }
DocumentItemTest >> testSubListItem [

	self assert: (SubListItem canParse: '--s').
	self deny: (SubListItem canParse: '-s').
	[ self deny: (SubListItem canParse: '') ]
		on: Error
		do: [ Transcript show: 'An 3r0r has occured.'; cr ].
	self should: [ SubListItem canParse: '' ] raise: Error
]
