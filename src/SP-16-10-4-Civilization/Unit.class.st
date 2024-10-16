Class {
	#name : 'Unit',
	#superclass : 'Object',
	#instVars : [
		'health',
		'experience',
		'attackUnitPower',
		'defenseUnitPower'
	],
	#category : 'SP-16-10-4-Civilization',
	#package : 'SP-16-10-4-Civilization'
}

{ #category : 'as yet unclassified' }
Unit >> attack: anEnnemi [

	self subclassResponsibility 
	"anEnnemi health: anEnnemi health - (self attackUnitPower* experience ).
	self health: self health - anEnnemi defenseUnitPower"
]

{ #category : 'accessing' }
Unit >> attackUnitPower [

	^ attackUnitPower * ((self experience*0.5)+0.5) 
]

{ #category : 'accessing' }
Unit >> defenseUnitPower [

	^ defenseUnitPower
]

{ #category : 'accessing' }
Unit >> experience [

	^ experience
]

{ #category : 'accessing' }
Unit >> experience: anInt [

	experience := anInt
]

{ #category : 'accessing' }
Unit >> health [

	^ health
]

{ #category : 'accessing' }
Unit >> health: anInteger [

	health := anInteger
]

{ #category : 'initialization' }
Unit >> initialize [

	health := 100.
	experience := 1.
	attackUnitPower := 0.
	defenseUnitPower := 0.
]
