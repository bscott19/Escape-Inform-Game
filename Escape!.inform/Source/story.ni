"Escape!" by Brent Scott


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


[---Rooms and Doors---]

Lobby is a room. 

	Exit Door is a door. It is west of Lobby. 

NE Zone is a room. It is west of Exit Door. [<-- Starting point]

NW Zone is a room. It is west of NE Zone. 

SE Zone is a room. It is south of NE Zone. 

SW Zone is a room. It is south of NW Zone. It is west of SE Zone. 

Closet is a room. It is south of Closet Door. 

	Closet Door is a door. It is south of SE Zone. It is locked and lockable. Paperclip unlocks Closet Door. 
	Paperclip is a thing. It is inside Desk Drawer. 

Hidden Room is a room. It is west of Hidden Door. [It is undescribed.]
	
	Hidden Door is a door. It is west of SW Zone. 


[---Scenery---]

Desk is a thing in NW zone. It is not portable. 
	Desk_Drawer is a part of Desk. Desk_Drawer is a closed openable container.
	
[Gray_Painting_1 is scenery in NW Zone. Its published name is "Gray Painting". ]
	