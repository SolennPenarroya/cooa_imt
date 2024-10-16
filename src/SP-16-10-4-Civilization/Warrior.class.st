Class {
	#name : 'Warrior',
	#superclass : 'Unit',
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'initialization' }
Warrior >> initialize [

	health := 100.
	experience := 1.
	attackUnitPower := 10.
	defenseUnitPower := 10
]
