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

	
]

{ #category : 'fighting' }
Archer >> counterAgainstKnight: aKnight [
	self health: self health - (aKnight defenseUnitPower )

	
]

{ #category : 'fighting' }
Archer >> counterAgainstPike: aPike [

	
]

{ #category : 'fighting' }
Archer >> counterAgainstWarrior: aWarrior [
	
]

{ #category : 'fighting' }
Archer >> defendAgainstArcher: anArcher [

	
]

{ #category : 'fighting' }
Archer >> defendAgainstKnight: aKnight [
]

{ #category : 'fighting' }
Archer >> defendAgainstPike: aPike [
]

{ #category : 'fighting' }
Archer >> defendAgainstWarrior: aWarrior [

	
]

{ #category : 'initialization' }
Archer >> initialize [
	super initialize.
	health := 100.
	experience := 1.
	attackUnitPower := 20.
	defenseUnitPower := 5
]
