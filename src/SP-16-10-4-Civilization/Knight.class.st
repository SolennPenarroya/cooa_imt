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

	
]

{ #category : 'fighting' }
Knight >> counterAgainstKnight: aKnight [
]

{ #category : 'fighting' }
Knight >> counterAgainstPike: aPike [

	
]

{ #category : 'fighting' }
Knight >> counterAgainstWarrior: aWarrior [
	
]

{ #category : 'fighting' }
Knight >> defendAgainstArcher: anArcher [
	"est attaqué par puis riposte"
	self health: self health - (anArcher attackUnitPower).
	anArcher counterAgainstKnight: self
]

{ #category : 'fighting' }
Knight >> defendAgainstKnight: aKnight [

	
]

{ #category : 'fighting' }
Knight >> defendAgainstPike: aPike [

	
]

{ #category : 'fighting' }
Knight >> defendAgainstWarrior: aWarrior [

	
]

{ #category : 'initialization' }
Knight >> initialize [
	super initialize.
	health := 100.
	experience := 1.
	attackUnitPower := 20.
	defenseUnitPower := 5
]
