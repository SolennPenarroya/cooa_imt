Class {
	#name : 'Component',
	#superclass : 'Object',
	#instVars : [
		'id'
	],
	#category : 'SP-15-10-3-Signals-And-Gates-circuit',
	#package : 'SP-15-10-3-Signals-And-Gates-circuit'
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
