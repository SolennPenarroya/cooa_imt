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

	
]

{ #category : 'fighting' }
Warrior >> counterAgainstKnight: aKnight [

	
]

{ #category : 'fighting' }
Warrior >> counterAgainstPike: aPike [

	
]

{ #category : 'fighting' }
Warrior >> counterAgainstWarrior: aWarrior [
	
]

{ #category : 'fighting' }
Warrior >> defendAgainstArcher: anArcher [

	
]

{ #category : 'fighting' }
Warrior >> defendAgainstKnight: aKnight [
	 
]

{ #category : 'fighting' }
Warrior >> defendAgainstPike: aPike [

	
]

{ #category : 'fighting' }
Warrior >> defendAgainstWarrior: aWarrior [

	
]

{ #category : 'initialization' }
Warrior >> initialize [

	health := 100.
	experience := 1.
	attackUnitPower := 10.
	defenseUnitPower := 10
]
