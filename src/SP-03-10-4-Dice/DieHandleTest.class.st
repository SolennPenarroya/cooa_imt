Class {
	#name : 'DieHandleTest',
	#superclass : 'TestCase',
	#category : 'SP-03-10-4-Dice',
	#package : 'SP-03-10-4-Dice'
}

{ #category : 'tests' }
DieHandleTest >> testCreationAdding [
    | handle |
    handle := DieHandle new
        addDie: (Die withFaces: 6);
        addDie: (Die withFaces: 10);
        yourself.
    self assert: handle diceNumber equals: 2.

]
