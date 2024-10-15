Class {
	#name : 'HighSignal',
	#superclass : 'LogicalSignal',
	#category : 'Signals-And-Gates',
	#package : 'Signals-And-Gates'
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
