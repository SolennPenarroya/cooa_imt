Class {
	#name : 'Component',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'Signals-And-Gates-circuit',
	#package : 'Signals-And-Gates-circuit'
}

{ #category : 'accessing' }
Component >> id [
id ifNil: [ id := self hash ].
^ id
]

{ #category : 'accessing' }
Component >> id: anId [
	id := anId
]
