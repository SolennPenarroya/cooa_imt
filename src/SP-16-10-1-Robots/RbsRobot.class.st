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
    | newPosition |
    "Compute the new position based on the robot's direction"
    newPosition := self computeNewPosition: anInteger.

    "Put the ground tile back at the old position"
    self board atX: self x atY: self y put: (RbsGround new x: self x y: self y).

    "Get the tile at the new position"
    previousTile := self board atX: newPosition x atY: newPosition y.

    "Move the robot to the new position"
    self board atX: newPosition x atY: newPosition y put: self.

    "Update the robot's position"
    self x: newPosition x.
    self y: newPosition y.

]

{ #category : 'accessing' }
RbsRobot >> x [

	^ x.
]

{ #category : 'instance creation' }
RbsRobot >> x: aNumber y: bNumber [
    x := aNumber.
    y := bNumber.
]

{ #category : 'accessing' }
RbsRobot >> y [

	^ y.
]
