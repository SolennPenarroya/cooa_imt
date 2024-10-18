Class {
	#name : 'Pike',
	#superclass : 'Unit',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'fighting' }
Pike >> attack: anEnnemi [

	anEnnemi defendAgainstPike: self
]

{ #category : 'fighting' }
Pike >> counterAgainstArcher: anArcher [

	self health: self health - anArcher defenseUnitPower
]

{ #category : 'fighting' }
Pike >> counterAgainstKnight: aKnight [

	self health: self health - aKnight defenseUnitPower
]

{ #category : 'fighting' }
Pike >> counterAgainstPike: aPike [

	self health: self health - aPike defenseUnitPower
]

{ #category : 'fighting' }
Pike >> counterAgainstWarrior: aWarrior [

	self health: self health - aWarrior defenseUnitPower
]

{ #category : 'fighting' }
Pike >> defendAgainstArcher: anArcher [

	self health: self health - anArcher attackUnitPower.
	anArcher counterAgainstPike: self
]

{ #category : 'fighting' }
Pike >> defendAgainstKnight: aKnight [

	self health: self health - aKnight attackUnitPower.
	aKnight counterAgainstPike: self
]

{ #category : 'fighting' }
Pike >> defendAgainstPike: aPike [

	self health: self health - aPike attackUnitPower.
	aPike counterAgainstPike: self
]

{ #category : 'fighting' }
Pike >> defendAgainstWarrior: aWarrior [

	self health: self health - aWarrior attackUnitPower.
	aWarrior counterAgainstPike: self
]

{ #category : 'initialization' }
Pike >> initialize [

	super initialize.
	health := 100.
	experience := 1.
	attackUnitPower := 5.
	defenseUnitPower := 20
]
