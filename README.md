StuyCraft II
=====

Use 0-9 to control units, click the unit box to create a new unit.  Pickups give boosts to the player or enemy. <br>
 
The objective is to destroy the enemy base.
<br>




Day 1 28 Dec 14 <br>
Started the base code.<br>
-A black rectangle in the upper left represents the player's base.<br>
-A unit spawned in front of the rectangle can be directed via the mouse.<br>
-Clicking the black rectangle at the bottom left spawns another unit, not yet controllable.<br>

29 Dec 14 <br>
-fixed up shapes/rectangles. No longer overlaps outside screen <br>
-resized screen to be smaller <br>
-fixed error with bottom rectangle not showing <br>
-able press 1 or 0 to switch between units <br>
*** speed still not constant

--Wait time for creating a unit.<br>
--Gold decreases upon creating a unit.<br>

30Dec14<br>
-Threw in a bunch of code to do combat<br>

31 Dec 14 <br>
*note* going to need to make multiple posx and posy for each unit so each can do stuff while user controls other units<br>
-extended code to allow to make max of 10 units
-BUG--when creating a unit, creates all 10
<br>-revert code and implement classes in the file "gogoclasses_java"

<br>
1 Jan 15 <br>
-made mx and my variable for class allowing each unit to have own<br>
-made possible for other units to continue moving if another unit selected<br>
-BUG unit that continues to move while not selected will not stop. must fix <br>
*note* need to readd code for max 10 units
<br>
6 Jan 15<br>
Implement more class stuff to make code more efficient<br>
Started on combat<br>
7Jan15<br>
Tried to finish combat<br>
Health above units<br>
10 Jan 15<br>
-seems like combat now able to do 2v1, ect, may need more testing<br>
-BUG can only have one battle occuring, multiple battles not working<br>
make method number near by, makes a arraylist of units<br>
-BUG friendly health text not updating<br>
damage done = number near by * attack of one unit<br>

12 Jan 15<br>
-fixed a combat error<br>
-multiple battles bug still exists<br>
13Jan15<br>
Working more on combat<br>
14Jan15<br>
Tried to fix constant speed issue<br>
started working on bases<br>
15Jan15<br>
Got the ai started <br>
You can attack the enemy base<br>
Implement constant speed<br>
16Jan15<br>
Ai attacks units<br>
Ai creates units<br>
17Jan15<br>
Fixing up the ai<br>
18 Jan 15<br>
-fixed position of friendlycastle<br>
-gave units method to attack castle like attacking a unit<br>
-must fix multiple battle error<br>
-error when all friendly units die<br>
-improved game concept, only able to attack if still <br>
*<ul>Things to Do</ul>*<br>
-fix multiple battles. while units fight, others cant fight base<br>
-fix position of units so they dont go behind base <br>
-fix speed of enemy units <br>
-fix enemy ai so that goes after other friendly unit<br>
=make enemy spawn slower<br>
19Jan15<br>
Fixing bugs for ai and combat<br>
20Jan15<br>
Fixing more bugs<br>
Added sprites/graphics<br>
21Jan15<br>
Worked out combat glitches<br>
22Jan15<br>
Finishing up made pickups and unit number is displayed over the unit.<br>
Split into different files<br>
23Jan15<br>
Doing comments<br>
