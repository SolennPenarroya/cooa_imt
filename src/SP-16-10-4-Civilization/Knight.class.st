Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'fighting' }
Knight >> attack: anEnnemi [

	anEnnemi defendAgainstKnight: self
]

{ #category : 'fighting' }
Knight >> counterAgainstArcher: anArcher [

	self health: self health - anArcher defenseUnitPower
]

{ #category : 'fighting' }
Knight >> counterAgainstKnight: aKnight [

	self health: self health - aKnight defenseUnitPower
]

{ #category : 'fighting' }
Knight >> counterAgainstPike: aPike [

	
	self health: self health - aPike defenseUnitPower
]

{ #category : 'fighting' }
Knight >> counterAgainstWarrior: aWarrior [

	
	self health: self health - aWarrior defenseUnitPower
]

{ #category : 'fighting' }
Knight >> defendAgainstArcher: anArcher [
	"est attaqué par puis riposte"
	self health: self health - (anArcher attackUnitPower).
	anArcher counterAgainstKnight: self
]

{ #category : 'fighting' }
Knight >> defendAgainstKnight: aKnight [

	self health: self health - aKnight attackUnitPower.
	aKnight counterAgainstKnight: self
]

{ #category : 'fighting' }
Knight >> defendAgainstPike: aPike [

		self health: self health - aPike attackUnitPower.
	aPike counterAgainstKnight: self
]

{ #category : 'fighting' }
Knight >> defendAgainstWarrior: aWarrior [

	self health: self health - aWarrior attackUnitPower.
	aWarrior counterAgainstKnight: self
]

{ #category : 'initialization' }
Knight >> initialize [
	super initialize.
	health := 100.
	experience := 1.
	attackUnitPower := 20.
	defenseUnitPower := 5
]
