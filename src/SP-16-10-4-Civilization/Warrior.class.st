Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'fighting' }
Warrior >> attack: anEnnemi [

	anEnnemi defendAgainstWarrior: self
]

{ #category : 'fighting' }
Warrior >> counterAgainstArcher: anArcher [

	self health: self health - anArcher defenseUnitPower
]

{ #category : 'fighting' }
Warrior >> counterAgainstKnight: aKnight [

	
	self health: self health - aKnight defenseUnitPower
]

{ #category : 'fighting' }
Warrior >> counterAgainstPike: aPike [

	
	self health: self health - aPike defenseUnitPower
]

{ #category : 'fighting' }
Warrior >> counterAgainstWarrior: aWarrior [

	
	self health: self health - aWarrior defenseUnitPower
]

{ #category : 'fighting' }
Warrior >> defendAgainstArcher: anArcher [

	self health: self health - anArcher attackUnitPower.
	anArcher counterAgainstWarrior: self
]

{ #category : 'fighting' }
Warrior >> defendAgainstKnight: aKnight [

	self health: self health - aKnight attackUnitPower.
	aKnight counterAgainstWarrior: self
]

{ #category : 'fighting' }
Warrior >> defendAgainstPike: aPike [

	self health: self health - aPike attackUnitPower.
	aPike counterAgainstWarrior: self
]

{ #category : 'fighting' }
Warrior >> defendAgainstWarrior: aWarrior [

	self health: self health - aWarrior attackUnitPower.
	aWarrior counterAgainstWarrior: self
]

{ #category : 'initialization' }
Warrior >> initialize [

	health := 100.
	experience := 1.
	attackUnitPower := 10.
	defenseUnitPower := 10
]
