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
	