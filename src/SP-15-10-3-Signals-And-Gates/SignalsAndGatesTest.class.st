Class {
	#name : 'SignalsAndGatesTest',
	#superclass : 'TestCase',
	#category : 'SP-15-10-3-Signals-And-Gates',
	#package : 'SP-15-10-3-Signals-And-Gates'
}

{ #category : 'tests' }
SignalsAndGatesTest >> testAnd [
self assert: (HighSignal new and: HighSignal new value) value equals: HighSignal new value.
self assert: (LowSignal new and: HighSignal new value) value equals: LowSignal new value.
self assert: (LowSignal new and: LowSignal new value) value equals: LowSignal new value
]

{ #category : 'tests' }
SignalsAndGatesTest >> testNot [
 self assert: HighSignal new not value equals: LowSignal new value 
"on compare les valeurs et pas l'objet directement sinon, comparaison d'identité fausse"
]

{ #category : 'tests' }
SignalsAndGatesTest >> testOr [
self assert: (HighSignal new or: LowSignal new value) value equals: HighSignal new value.
self assert: (LowSignal new or: HighSignal new value) value equals: HighSignal new value.
self assert: (LowSignal new or: LowSignal new value) value equals: LowSignal new value
]

{ #category : 'tests' }
SignalsAndGatesTest >> testValue [
	self assert: HighSignal new value equals: 1
]
