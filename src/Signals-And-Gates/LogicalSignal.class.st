Class {
	#name : 'LogicalSignal',
	#superclass : 'Object',
	#category : 'Signals-And-Gates',
	#package : 'Signals-And-Gates'
}

{ #category : 'controlling' }
LogicalSignal >> and: aSignal [ "méthode abstraite à redéfinir dans les sous-classes"
 ^ self subclassResponsibility 
]

{ #category : 'controlling' }
LogicalSignal >> or: aSignal [ "méthode abstraite à redéfinir dans les sous-classes"
 ^ self subclassResponsibility 
]
