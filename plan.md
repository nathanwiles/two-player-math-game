## Premise

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

## Tasks

## Extract Nouns for Classes
come up with classes to handle the data required to statisfy the premise


## Write their roles
describe what role the class will serve


## Work

Classes:
- Game: contains the logic for the game loop, switches players after each turn

- Player: takes in player number initialy. Contains variable "lives" which start at three, and a method called "wrong_answer" to decrement.

- Question: contains the logic to ask and check the answer of a simple math question. contains user i/o
