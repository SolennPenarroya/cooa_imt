Class {
	#name : 'RbsRobot',
	#superclass : 'RbsAbstractRobot',
	#instVars : [
		'direction'
	],
	#category : 'SP-16-10-1-Robots',
	#package : 'SP-16-10-1-Robots'
}

{ #category : 'initialization' }
RbsRobot >> initialize [ 
   "set default direction to east"
	super initialize.
	direction := #east
]
