"Escape!" by Brent Scott

[---Beginning the game---]

When play begins:
	Say "You have an hour to find the clues, solve the puzzles, and break out of the room. Be sure to examine everything. Your friend is along for the ride, but is very tired and not much help. He'll end up sleeping for most of the hour. {NPC NOT YET FUNCTIONAL FOR BETA TEST} 
	
	The main room is divided in to four parts, 'NE, NW, SE, and SW'. You can't walk diagonally between these zones, so navigate in the main room using: 'N, S, E, W'. (ex. moving from NE to SW, use S and then W or W and then S. The upper left of the status bar will help by letting you know what directions you can walk in. 
	
	The employee takes you in to the NE zone of the room and the time begins.";
	move player to NE Zone, without printing a room description. 

[---Basic Rules---]

When play begins: 
    now left hand status line is "You can walk to the: [exit list]"; 
    now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".
		
[time]
When play begins: now the time of day is 9:00 AM. 
At 9:00 AM: say "You have 60 minutes to breakout! (Each turn is one minute. You will be reminded periodically of the time, or you can always examine the wall clock in the NE zone.)".
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
	
An every turn rule:
	If Exit Door is unlocked:
		end the story finally;
		say "Congrats! You open the door and escape in time!".

[Include Secret Doors by Andrew Owen. ]

[---Rooms---]

Lobby is a room. 

NE Zone is a room. It is west of Exit Door. [<-- Starting point] The description of NE Zone is "In this side of the room there is a painting hanging and the exit door, with its flashing keypad. (x Exit Door to enter pin code)"

NW Zone is a room. It is west of NE Zone. The description of NW Zone is "In this side of the room there is a desk with a small poster hanging above it". 

SE Zone is a room. It is south of NE Zone. The description of SE Zone is "In this side of the room there is a painting hanging and a small closet with an interesting locked door." 

SW Zone is a room. It is south of NW Zone. It is west of SE Zone.  The description of SW Zone is "In this side of the room there is a painting hanging and your friend is sleeping on the floor." 

Closet is a room. It is south of Closet Door. The description of Closet is "A small closet with a few jackets hung on the bar". 

Hidden Room is a room. It is west of Hidden Door.
	

[---Doors---]

[Closet Door]
Closet Door is a door. It is north of Closet and south of SE Zone. It is locked and lockable. Paperclip unlocks Closet Door. 

The description of Closet Door is "An ordinary door leading to a small storage closet in the room. It's locked with one of those flimsy locks the criminals always pick."
	
Instead of opening Closet Door:
	if Paperclip is Unfolded:
		say "You use the long wire of the unfolded paperclip to pick the lock on the door. It clicks and the door is unlocked. ";
		now Closet Door is unlocked;
		continue the action; 
	otherwise:
		say "The door is locked. If only you had something to manipulate the lock open."
		
[Hidden Door]
The Hidden Door is a [secret] door. It is locked and lockable. Unidentified key unlocks Hidden Door. 
The Hidden Door is west of the SW Zone. 
	
[Exit Door]
Exit Door is a door. It is west of Lobby. It is locked and lockable. 

The description of Exit Door is "A solid metal door and keypad. Have you found the pin code?"
	After examining Exit Door:
		now the command prompt is "Enter the 4 digit pin code to unlock door. >";
		continue the action.
		
   
After reading a command when the command prompt is "Enter the 4 digit pin code to unlock door. >":
	increment the turn count;
	if the player's command matches "6264":
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

Desk is a thing in NW zone. It is not portable. The description of Desk is "There's not much on the desk surface other than a potted plant. The desk has a small drawer below it."
	Desk_Drawer is a part of Desk. Desk_Drawer is a closed openable container.
	The printed name of Desk_Drawer is "Desk Drawer".
	Understand "Drawer", "Desk Drawer" as Desk_Drawer. 
	
	Potted Plant is an object on the Desk. It is undescribed. The description of Potted Plant is "An insignificant succulant in a clay pot. It looks like it hasn't had water in a while."
	
Computer is an object in Hidden Room. 
	Instead of examining Computer:
		say "Logging in...";
		say "...";
		say "...";
		say "A line of numbers appears on the screen: {7692649}".
	
Poster is scenery in NW Zone. It is not portable. The description of Poster is "The poster hangs above the desk and reads 'ODD NUMBERS ARE A MYTH. Consider only using the even numbers'".

Blue Painting is scenery in NE Zone. It is not portable. The description of Blue Painting is "A large abstract blue painting hung solidly in place". 

Green Painting is scenery in SE Zone. It is not portable. The description of Green Painting is "A large abstract green painting hung solidly in place". 

Red Painting is an object in SW Zone. The description of Red Painting is "A large abstract red painting hanging slightly askew on the wall".  [This is the painting that covers the door to the hidden room. Player must get help from NPC to lift out of way, revealing door that they have key to.]

Wall Clock is an object in NE Zone. Wall clock is not portable. 
	Instead of examining wall clock:
		say "A digital clock showing the current time. You started the game at 9:00 am and have 60 minutes to escape. Remember that each turn is one minute.";
		say "it is currently [time of day]". 
	


[---Portable  Objects---]

Paperclip is a thing. It is inside Desk_Drawer. The Paperclip is either Intact or Unfolded. It is Intact.  The description of Paperclip is "A normally folded paperclip. Perfectly capable of being unfolded."
	Understand "Unfold paperclip" or "Bend paperclip" or "Straighten paperclip" as unfolding. Unfolding is an action applying to nothing.
	After Unfolding:
	say "You unfold the paperclip in to a long, stiff wire, making it perfect to pick a door";
	now the Paperclip is Unfolded. 

Suede Jacket is a thing. It is inside closet. The description of Suede Jacket is "A very fashionable blue suede jacket."

Leather Jacket is a thing. It is inside closet. The description of Leather Jacket is "An emo looking slick black leather jacket."

Cotten Jacket is a thing. It is inside closet. The description of Cotten Jacket is "A trendy white bomber jacket made out of cotten. There is a zipped pocket on the front of this jacket". 
	Jacket pocket is a part of Cotten Jacket. Jacket pocket is a closed openable container. 
	Understand "unzip" as opening. 
	
	Instead of examining Jacket Pocket:
		Say "You open the Jacket pocket, revealing Unidentified Key";
		Now the Jacket pocket is open.  
	
	Unidentified Key is inside Jacket pocket. The description of Unidentified Key is "An unidentified door key."



[---NPC---]

Friend is a male person in SW Zone. The description of Friend is "Your friend begrudgingly agreed to come along with you to do the escape room, but is spending most of the time sleeping on the floor. He's probably only good for a minute or two of help. {NPC NOT YET FUNCTIONAL FOR BETA TEST}" 







