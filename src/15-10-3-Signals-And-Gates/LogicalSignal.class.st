Class {
	#name : 'LogicalSignal',
	#superclass : 'Object',
	#category : '15-10-3-Signals-And-Gates',
	#package : '15-10-3-Signals-And-Gates'
}

{ #category : 'controlling' }
LogicalSignal >> and: aSignal [ "méthode abstraite à redéfinir dans les sous-classes"
 ^ self subclassResponsibility 
]

{ #category : 'controlling' }
LogicalSignal >> or: aSignal [ "méthode abstraite à redéfinir dans les sous-classes"
 ^ self subclassResponsibility 
]
