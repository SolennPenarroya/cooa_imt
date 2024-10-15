Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#classInstVars : [
		'faces'
	],
	#category : 'SP-03-10-4-Dice',
	#package : 'SP-03-10-4-Dice'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: aNumber [
    ^ self new faces: aNumber; yourself

]

{ #category : 'as yet unclassified' }
Die >> faces [
^ faces

	
]

{ #category : 'as yet unclassified' }
Die >> faces: aNumber [
    faces := aNumber

]

{ #category : 'initialization' }
Die >> initialize [

	faces ifNil: [ faces := 6 ]
]

{ #category : 'as yet unclassified' }
Die >> roll [
 ^ faces atRandom

	
]
