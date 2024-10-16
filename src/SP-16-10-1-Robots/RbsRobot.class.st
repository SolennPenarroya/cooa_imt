Class {
	#name : 'RbsRobot',
	#superclass : 'RbsAbstractRobot',
	#instVars : [
		'direction'
	],
	#category : 'SP-16-10-1-Robots',
	#package : 'SP-16-10-1-Robots'
}

{ #category : 'as yet unclassified' }
RbsRobot >> computeNewPosition: anInteger [
	"Retourne un point représentant la position du prochain move en fonction de la direction actuelle"

	^ direction = #east
		  ifTrue: [ self x + anInteger @ self y ] 
		  ifFalse: [
			  direction = #west
				  ifTrue: [ self x - anInteger @ self y ]
				  ifFalse: [
					  direction = #north
						  ifTrue: [ self x @ (self y + anInteger) ]
						  ifFalse: [ self x @ (self y - anInteger) ] ] ]
]

{ #category : 'accessing' }
RbsRobot >> direction [
^ direction 
]

{ #category : 'accessing' }
RbsRobot >> direction: aDirection [
direction := aDirection 

]

{ #category : 'initialization' }
RbsRobot >> initialize [ 
   "set default direction to east"
	super initialize.
	direction := #east
]

{ #category : 'accessing' }
RbsRobot >> move: anInteger [
	"Move le robot d'une distance, maj sa position et restore le sol précédent"

	| newPosition |
	newPosition := self computeNewPosition: anInteger.

	"Remettre le sol à la position actuelle du robot "
	self board atX: self x atY: self y put: previousTile.

	"Maj position"
	previousTile := self board atPosition: newPosition.
	self board atX: newPosition x atY: newPosition y put: self.
	self x: newPosition x y: newPosition y
]
