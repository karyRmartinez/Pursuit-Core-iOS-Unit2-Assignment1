## Unit 2, Week 1 Homework

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link of your Fork on Canvas and submit

## Tic Tac Toe: Player vs. Player
### Exercise

For this assignment, you will be bringing Tic Tac Toe to life on your own.

#### Requirements:

Do worry about:
1. Alternating turns: After a player has placed down an X, the next tap must be an O.
1. Player turns: Your layout must include a label to display whose turn it is and another label to keep count of the wins.
1. New game: You must include a reset button. This resets the game, of course.
1. Win condition checking: a game is over when a player has marked 3-in-a-row. No other moves should be allowed until the reset button is tapped.

Don't worry about:
1. Don't worry too much about layout at the moment. You'll learn how to make your app much prettier in a later project. See below for our expectations.

Magic in Action|Hooray!
---|---
![Smooth moves](Images/player-two-turn.png)|![Yay](Images/player-one-wins.png)


Alternatively, you can add images to your blue ```Assets.xcassets``` folder in the Project Navigator sidebar in case you're into that.

Yup|Some might not like this
---|---
![Smooth moves](Images/player-two-turn.png)|![Yay](Images/player-two-turn-1.png)


#### Hints:

1. You should use buttons for each square.
1. There is probably an easier way to do things. Instead of control-dragging 9 different outlets and actions to your ```ViewController```, you can code your logic to take in which button is clicked. Or you can do 9 drags, whatever you want.
1. You can add inspectable properties if you sub-class a button-- particular `IBInspectable` to keep track of rows and cols. This will help you keep track of which button is clicked. 

In Editor|Identity Inspector|Attributes Inspector
---|---|---
![In Editor](Images/ibinspectable.png)|![Identity Inspector](Images/customclass.png)|![Attributes Inspector](Images/rowcol.png)
Adding these properties in your subclass|Selecting your Custom Class in the Identity Inspector|Hey look! New attributes in the Attributes Inspector!

For some extra reading on this subject, check out: http://nshipster.com/ibinspectable-ibdesignable/

1. Alternatively, you can tag your buttons within the attributes inspector.
![screenshot](Images/tagging.png)


## The ```git``` side of things

1. Fork this repo if you haven't already.
1. Clone your **own** fork to your local project directory in Terminal.
	```
	git clone https://github.com/YOURNAMEHERE/AC-iOS-tictactoe.git
	```
1. At this point you should be able to open the project in that folder and have a working table showing titles and dates. Work on the assignment and when you're done when you're done `commit` inside XCode or on the Terminal command line and then run the below. That will `push` your changes up to that branch on your fork. 
	```
	git add .
	git commit -am "I made these changes"
	git push origin master
	```
1. Feel free to `commit` early and often as a "checkpoint" of sorts to save your work.
1. Make a pull request from **your** fork to C4Q/master at the Github site once you're done.
1. Take a breather. We did it, Reddit!

## Looking for a stretch?

1. Create a game mode where the user can play against the computer. The user can select an option to "Play the Computer," which will make the user x and the computer o. After each move by the user, the computer will randomly pick an open space to put their o.
1. Add some additional "Play the Computer" features: let the user decide who goes first, let the user decide which option they want to be (x or o), keep track of wins and losses against the computer.

## Big stretch!!!!

1. Tic Tac Toe is a solved game. A [solved game](https://github.com/joinpursuit/Pursuit-Core-iOS-Unit2-Assignment1) is one where the best possible move at any point can be determined. Implement the best possible move for the Computer's turns to make your game super-hard.
