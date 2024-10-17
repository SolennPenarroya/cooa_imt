```smalltalk
| space gridSize squareSize grid |

"Définir la taille de la grille (10x10) et des carrés"
gridSize := 10.
squareSize := 50.

"Créer un espace Bloc"
space := BlSpace new.
space extent: (gridSize * squareSize) @ (gridSize * squareSize).

"Créer la grille de couleurs aléatoires"
grid := BlElement new.

"Remplir la grille avec des carrés colorés en utilisant background:"
1 to: gridSize do: [ :row |
    1 to: gridSize do: [ :col |
        | square randomColor |
        square := BlElement new.
        
        "Générer une couleur aléatoire pour chaque carré"
        randomColor := Color random.

        square
            extent: squareSize @ squareSize;
            position: (col - 1) * squareSize @ (row - 1) * squareSize;
            background: randomColor.

        grid addChild: square.
    ].
].

"Ajouter la grille à l'espace via root"
space root addChild: grid.

"Afficher l'espace"
space show.




```
