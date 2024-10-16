Class {
	#name : 'CivilisationTest',
	#superclass : 'TestCase',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'tests' }
CivilisationTest >> testCombatKnightTwoWarriorThreeHillyTerrain [

	| k w |
	k := Knight new.
	k experience: 2.
	w := Warrior new.
	w experience: 3.
	k attack: w.
	self assert: w health equals: 80.
	self assert: k health equals: 90
]

{ #category : 'tests' }
CivilisationTest >> testCombatWarriorFlatTerrain [

	| w w2 |
	w := Warrior new.
	w2 := Warrior new.
	w attack: w2.
	self assert: w2 health equals: 90.
	self assert: w health equals: 90.
	
]

{ #category : 'tests' }
CivilisationTest >> testLevel [

	| w k |
	w := Warrior new.
	k := Knight new.
	w experience: 2.
	k experience: 3.
	self assert: w attackUnitPower equals: 15.
	self assert: k attackUnitPower equals: 40.
]
