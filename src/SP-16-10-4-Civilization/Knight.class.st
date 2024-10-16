Class {
	#name : 'Knight',
	#superclass : 'Unit',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'as yet unclassified' }
Knight >> attack: anEnnemi [

	anEnnemi defendAgainstKnight: self
]

{ #category : 'initialization' }
Knight >> initialize [

	health := 100.
	experience := 1.
	attackUnitPower := 20.
	defenseUnitPower := 5.
]
