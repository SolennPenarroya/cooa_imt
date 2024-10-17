```smalltalk
| space gridSize squareSize |

gridSize := 10.
squareSize := 50.

space := BlSpace new.
space extent: (gridSize * squareSize) @ (gridSize * squareSize).

1 to: gridSize do: [ :row | 
    1 to: gridSize do: [ :col |
        | square randomColor |
        square := BlElement new.
        randomColor := Color random.

        square
            extent: squareSize @ squareSize;    
            position: (col - 1) * squareSize @ (row - 1) * squareSize; 
            background: randomColor.                
        space root addChild: square.
    ].
].

space show. 

```
