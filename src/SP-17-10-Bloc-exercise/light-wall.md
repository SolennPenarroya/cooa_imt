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
        | square circle1 circle2 randomColor |
        randomColor := Color random.

        square := BlElement new
            geometry: BlRectangleGeometry new;
            size: squareSize @ squareSize;
            background: randomColor;
            yourself.

        square position: ((j - 1) * squareSize) @ ((i - 1) * squareSize).
        grid addChild: square.

        "Créer le premier cercle"
        circle1 := BlElement new
            geometry: BlEllipseGeometry new;
            size: (squareSize / 2) @ (squareSize / 2);  "Taille du cercle"
            background: Color white;  "Couleur blanche"
            yourself.

        "Positionner le premier cercle au centre du carré"
        circle1 position: ((j - 1) * squareSize + (squareSize / 4)) @ ((i - 1) * squareSize + (squareSize / 4)).
        grid addChild: circle1.

        "Créer le deuxième cercle, plus grand et plus clair"
        circle2 := BlElement new
            geometry: BlEllipseGeometry new;
            size: ((squareSize / 2) + 10) @ ((squareSize / 2) + 10);  "Taille du cercle plus grand"
            background: (Color white alpha: 0.5);  "Couleur blanche avec opacité"
            yourself.

        "Positionner le deuxième cercle au centre du carré"
        circle2 position: ((j - 1) * squareSize + (squareSize / 4) - 5) @ ((i - 1) * squareSize + (squareSize / 4) - 5).  "Décalage pour centrer"
        grid addChild: circle2.
    ].
].

space := BlSpace new.
space root addChild: grid.
space show.






```
