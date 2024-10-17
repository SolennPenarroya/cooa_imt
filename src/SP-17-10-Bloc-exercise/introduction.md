'''smalltalk
blueRectangle := BlElement new
	geometry: BlRectangleGeometry  new;
	size: 200 @ 100;
	background: Color blue;
	yourself.

redRectangle := BlElement new
	geometry: BlRectangleGeometry  new;
	size: 50 @ 50;
	background: Color red; 
	yourself.
	
redRectangle position: 75@25. 

space := BlSpace new.
space root addChild: blueRectangle.
space root addChild: redRectangle.
space show

'''
