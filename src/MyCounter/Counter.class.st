Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [
	"^ self new count: anInteger ; yourself"
	| aCounter |
	aCounter := self new.
	aCounter count: anInteger.
	^ aCounter 
]

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [
	count := anInteger.
	^ 666
]

{ #category : 'API' }
Counter >> decrement [
	count := count - 1
]

{ #category : 'API' }
Counter >> increment [
	count := count + 1
]

{ #category : 'initialization' }
Counter >> initialize [ 
	count:=0
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
