Class {
	#name : 'Archer',
	#superclass : 'Unit',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'fighting' }
Archer >> attack: anEnnemi [

	anEnnemi defendAgainstArcher: self
]

{ #category : 'fighting' }
Archer >> counterAgainstArcher: anArcher [
	self health: self health - anArcher defenseUnitPower

	
]

{ #category : 'fighting' }
Archer >> counterAgainstKnight: aKnight [
	self health: self health - (aKnight defenseUnitPower )

	
]

{ #category : 'fighting' }
Archer >> counterAgainstPike: aPike [

	
	self health: self health - aPike defenseUnitPower
]

{ #category : 'fighting' }
Archer >> counterAgainstWarrior: aWarrior [

	
	self health: self health - aWarrior defenseUnitPower
]

{ #category : 'fighting' }
Archer >> defendAgainstArcher: anArcher [

	self health: self health - anArcher attackUnitPower.
	anArcher counterAgainstArcher: self
]

{ #category : 'fighting' }
Archer >> defendAgainstKnight: aKnight [

	self health: self health - aKnight attackUnitPower.
	aKnight counterAgainstArcher: self
]

{ #category : 'fighting' }
Archer >> defendAgainstPike: aPike [

	self health: self health - aPike attackUnitPower.
	aPike counterAgainstArcher: self
	
]

{ #category : 'fighting' }
Archer >> defendAgainstWarrior: aWarrior [

	self health: self health - aWarrior attackUnitPower.
	aWarrior counterAgainstArcher: self
]

{ #category : 'initialization' }
Archer >> initialize [
	super initialize.
	health := 100.
	experience := 1.
	attackUnitPower := 20.
	defenseUnitPower := 5
]
