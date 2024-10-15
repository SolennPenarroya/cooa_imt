Class {
	#name : 'Source',
	#superclass : 'Component',
	#instVars : [
		'output',
		'state'
	],
	#category : 'SP-15-10-3-Signals-And-Gates-circuit',
	#package : 'SP-15-10-3-Signals-And-Gates-circuit'
}

{ #category : 'as yet unclassified' }
Source >> off [
state := LowSignal new 
]

{ #category : 'as yet unclassified' }
Source >> on [
state := HighSignal new
]

{ #category : 'accessing' }
Source >> state [
	^ state
]

{ #category : 'operations' }
Source >> toggle [
state := state not
]
