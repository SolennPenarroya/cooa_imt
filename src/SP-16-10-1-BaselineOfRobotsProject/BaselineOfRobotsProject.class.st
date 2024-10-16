Class {
	#name : 'BaselineOfRobotsProject',
	#superclass : 'BaselineOf',
	#category : 'SP-16-10-1-BaselineOfRobotsProject',
	#package : 'SP-16-10-1-BaselineOfRobotsProject'
}

{ #category : 'baselines' }
BaselineOfRobotsProject >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
    		baseline: 'ContainersArray2D' 
    		with: [ spec repository: 'github://pharo-containers/Containers-Array2D/src' ].
		
		spec 
			package: #'Robots-Board' with: [
				spec requires:  #( #'ContainersArray2D') ] ]
		
		

]
