Class {
	#name : 'CivilisationTest',
	#superclass : 'TestCase',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'tests' }
CivilisationTest >> test [

	| k w |
	k := Knight new.
	k experience: 2.
	w := Warrior new.
	w experience: 3.
	k attack: w.
	self assert: w health equals: 70.
	self assert: k health equals: 90
]

{ #category : 'tests' }
CivilisationTest >> testAttackingPowerForKnightLevel3 [

	| k |
	k := Knight new.
	k experience: 3.
	self assert: k attackUnitPower equals: 40
]

{ #category : 'tests' }
CivilisationTest >> testAttackingPowerForWarriorLevel2 [

	| w |
	w := Warrior new.
	w experience: 2.
	self assert: w attackUnitPower equals: 15.
	
]

{ #category : 'tests' }
CivilisationTest >> testCombatKnight2Warrior3 [

	| k w |
	k := Knight new.
	k experience: 2.
	w := Warrior new.
	w experience: 3.
	k attack: w.
	self assert: w health equals: 70.
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
CivilisationTest >> testFightBetweenArcherAndKnightLevel1 [

	| a k |
	a := Archer new.
	k := Knight new.
	a attack: k.
	self assert: k health equals: 80.
	self assert: a health equals: 95.
]
