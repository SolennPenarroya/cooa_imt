Class {
	#name : 'SignalsAndGatesTest',
	#superclass : 'TestCase',
	#category : 'Signals-And-Gates',
	#package : 'Signals-And-Gates'
}

{ #category : 'tests' }
SignalsAndGatesTest >> testValue [
	HighSignal new value equals: 1
]
