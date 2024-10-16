Class {
	#name : 'RbsRobot',
	#superclass : 'RbsAbstractRobot',
	#instVars : [
		'direction'
	],
	#category : 'SP-16-10-1-Robots',
	#package : 'SP-16-10-1-Robots'
}

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
