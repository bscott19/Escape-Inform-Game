"Escape!" by Brent Scott

[---Beginning the game---]

When play begins:
	Say "{Intro message here/how directions work in the main room.} The employee takes you in to the NE zone of the room.";
	move player to NE Zone.

[---Basic Rules---]

When play begins: 
    now left hand status line is "Walk to the: [exit list]"; 
    now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".
		
[time]
When play begins: now the time of day is 9:00 AM. 
At 9:00 AM: say "You have 60 minutes to breakout! (Each turn is one minute)".
At 9:15 AM: say "You have 45 minutes left to break out!".
At 9:30 AM: say "You have 30 minutes left to break out!".
At 9:45 AM: say "You have 15 minutes left to break out!".
At 9:55 AM: say "The big wall clock begins its 5 minute countdown".
At 9:56 AM: say "The big wall clock reads 4 minutes remaining".
At 9:57 AM: say "The big wall clock reads 3 minutes remaining".
At 9:58 AM: say "The big wall clock reads 2 minutes remaining".
At 9:59 AM: say "The big wall clock reads 1 minutes remaining".
At 10:00 AM:
	 Say "You don't break out in time :(";
	End the story finally. 

[Include Secret Doors.]

[---Rooms---]

Lobby is a room. 

NE Zone is a room. It is west of Exit Door. [<-- Starting point]

NW Zone is a room. It is west of NE Zone. 

SE Zone is a room. It is south of NE Zone. 

SW Zone is a room. It is south of NW Zone. It is west of SE Zone. 

Closet is a room. It is south of Closet Door. 

Hidden Room is a room. It is west of Hidden Door. [It is undescribed.]
	

[---Doors---]

[Closet Door]
Closet Door is a door. It is south of SE Zone. It is locked and lockable. Paperclip unlocks Closet Door.
	
Instead of opening Closet Door:
	if Paperclip is Unfolded:
		say "You use the long wire of the unfolded to pick the lock on the door. It clicks and the door is unlocked. ";
		now Closet Door is unlocked;
	otherwise:
		say "That doesn't look like it fits in to the key hole."
		
[Hidden Door]
[The passage door is a secret door.]
The passage door is west of the SW Zone
	
[Exit Door]
Exit Door is a door. It is west of Lobby. It is locked and lockable. 

The description of Exit Door is "A solid metal door and keypad. Have you found the pin code?"
	After examining Exit Door:
		now the command prompt is "Enter the 4 digit pin code to unlock door. >";
		continue the action.
   
After reading a command when the command prompt is "Enter the 4 digit pin code to unlock door. >":
	increment the turn count;
	if the player's command matches "1234": [<--Temp. Code]
		now the Exit Door is unlocked;
		say "**BUZZ**  The door unlocks";
		now the command prompt is ">";
	otherwise:
		say "Incorrect pin, Door remains locked.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
	reject the player's command.   
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Enter the 4 digit pin code to unlock door. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.
		
[Passcode door credit Felix Larsson on infiction.org ~ https://intfiction.org/t/i-just-want-to-create-a-door-with-a-password-answered/2273/4 ~ Original code altered for this game]



[---Scenery & Non-portable objects---]

Desk is a thing in NW zone. It is not portable. 
	Desk_Drawer is a part of Desk. Desk_Drawer is a closed openable container.
	
[Gray_Painting_1 is scenery in NW Zone. Its published name is "Gray Painting". ]



[---Portable  Objects---]

Paperclip is a thing. It is inside Desk Drawer. The Paperclip is either Intact or Unfolded.






