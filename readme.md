# William's Basic Battle
version: 2.4
creator: William Wold
overview: William's Basic Battle is a 2D multiplayer game designed to run on chipmunk basic
note: use 'BasicBattle.bas'. if you get display errors then switch to BasicBattle(SimpChar).bas.

## instructions:
1. open the program in chipmunk basic
2. type in your start x any y location with each number followed by enter
3. tell your "start code" to the other player
4. enter the other player's start code
5. type in your action:
  * s or / is a sensor which the center square lights up when the enemy is within 1 square
  * b or * is a bomb which the enemy dies if they run over
  * m or - is a missile which you can aim at any square and it will destroy the enemy
  * n or 0 is no action. there is absolutely no reason to do that
6. type a number from 1-9 for movement (directions correspond to numpad directions)
7. trade multiplayer codes with opponent
8. repeat until someone wins (the winner must inform the loser that they are dead)

## bugs:
* possible desynchronization if a player tries to go off the screen (unconfirmed)
* players have already moved away from the square where they died when they are told they are dead
