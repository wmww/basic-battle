# William's Basic Battle

version 2.4

_The code was modified in June 2014, but may have been originally written a year or two before that_

## Overview

A terminal multiplayer game in which two opponents move around a 10x10 board, attempting to find and eliminate each other. Players play on separate devices. Instead of connecting directly, game state is synchronized with multiplayer codes which players must share and enter each turn.

## Interface

```
1  2  3  4  5  6  7  8  9  10
                              1 
          
                              2 
          
                              3 
          
                  7  8  9     4 
          
                  4  ⌾  6     5 
          
                  1  2  3     6 
          
   ╭     ▴  ▴        ▴        7 
          
      ▪        ╭     ╮        8 
          
   ╰     ╯        ▫           9 
          
               ╰     ╯        10 
          

your multyplayer code is 2 

enter other multyplayer code:? 5 

enter action:? m

enter missle target location: 
x=? 3
y=? 8

missle destroyed enemy. YOU WIN!!! 
```

## variants

* basic-battle-original.bas: uses Windows specific drawing characters
* basic-battle-ascii.bas: uses only ascii characters
* basic-battle-unicode.bas: uses various unicode characters for drawing

## Instructions

1. open the program in chipmunk basic (`./chipmunk-basic/basic-linux basic-battle-ascii.bas`, replacing the basic OS and program variant as required)
2. type in your start x any y location with each number followed by enter
3. tell your "start code" to the other player
4. enter the other player's start code
5. type in your action:

    * `s` or `/` is a sensor. The center lights up when the enemy is within 1 square (including diagonal)
    * `b` or `*` is a bomb. The enemy dies if they run over it
    * `m` or `-` is a missile which you can aim at any square, and only destroys the enemy if they are there when it is fired
    * `n` or `0` is no action. there is absolutely no reason to do that

6. type a number from 1-9 for movement (directions correspond to numpad directions)
7. trade multiplayer codes with opponent
8. repeat 5 - 7 until someone wins (the winner must inform the loser that they are dead)

## Bugs

* possible desynchronization if a player tries to go off the screen (unconfirmed)
* players have already moved away from the square where they died when they are told they are dead
