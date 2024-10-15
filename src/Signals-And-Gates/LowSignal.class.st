Class {
	#name : 'LowSignal',
	#superclass : 'LogicalSignal',
	#category : 'Signals-And-Gates',
	#package : 'Signals-And-Gates'
}

{ #category : 'controlling' }
LowSignal >> and: aSignal [
	^ self "on est déjà dans un low donc on renvoie un low"
]

{ #category : 'logical operations' }
LowSignal >> not [ 
 ^ HighSignal new
]

{ #category : 'controlling' }
LowSignal >> or: aSignal [
 ^ aSignal
]

{ #category : 'evaluating' }
LowSignal >> value [
	^ 0
]
