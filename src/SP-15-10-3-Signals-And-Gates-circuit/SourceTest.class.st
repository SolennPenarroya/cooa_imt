Class {
	#name : 'SourceTest',
	#superclass : 'TestCase',
	#category : 'SP-15-10-3-Signals-And-Gates-circuit',
	#package : 'SP-15-10-3-Signals-And-Gates-circuit'
}

{ #category : 'tests' }
SourceTest >> testInitialisation [

	| sourceSecurity |
	sourceSecurity := Source new.

	self assert: sourceSecurity state value equals: 1
]

{ #category : 'tests' }
SourceTest >> testOff [
|source|
source := Source new.
source off.
self assert: source state class equals: LowSignal 

]

{ #category : 'tests' }
SourceTest >> testOn [
|source|
source := Source new.
source on.
self assert: source state class equals: HighSignal 

]

{ #category : 'tests' }
SourceTest >> testToggle [

	| source |
	source := Source new.
	source off.
	source toggle.

	self assert: source state class equals: HighSignal.

	source toggle.
	self assert: source state class equals: LowSignal
]
