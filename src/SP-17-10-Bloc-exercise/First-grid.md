```smalltalk
| gridSize squareSize space grid randomColor |

gridSize := 10.
squareSize := 50.

grid := BlElement new
    geometry: BlRectangleGeometry new;
    size: (gridSize * squareSize) @ (gridSize * squareSize);
    background: Color white;
    yourself.

1 to: gridSize do: [:i |
    1 to: gridSize do: [:j |
        | square |
        randomColor := Color random.
        square := BlElement new
            geometry: BlRectangleGeometry new;
            size: squareSize @ squareSize;
            background: randomColor;
            yourself.
        square position: ((i - 1) * squareSize) @ ((j - 1) * squareSize).
        grid addChild: square.
    ].
].

space := BlSpace new.
space root addChild: grid.

space show.

```
