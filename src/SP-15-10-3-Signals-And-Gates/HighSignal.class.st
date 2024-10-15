Class {
	#name : 'HighSignal',
	#superclass : 'LogicalSignal',
	#category : 'SP-15-10-3-Signals-And-Gates',
	#package : 'SP-15-10-3-Signals-And-Gates'
}

{ #category : 'controlling' }
HighSignal >> and: aSignal [
	^ aSignal
]

{ #category : 'logical operations' }
HighSignal >> not [
 ^ LowSignal new
]

{ #category : 'controlling' }
HighSignal >> or: aSignal [
 ^ self 
]

{ #category : 'evaluating' }
HighSignal >> value [
	^ 1
]
