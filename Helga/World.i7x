World by Helga begins here.

Use authorial modesty.

A street is a kind of room.

Volume - Outside Ur

Outside Ur is a region.

Staging is a room in Outside Ur. "You should not be here. Something is broken." The printed name is "Go away."
One butter, one basic cheese, one stinky cheese 1, one stinky cheese 2 and one stinky cheese 3 are in staging.

Beginning is a room in Outside Ur. The printed name is "And so it begins...". "[first time][quotation-two][paragraph break][only][as the parser]'[story title]' is a work of Interactive Fiction. You are the main character in this story, and I am the parser.[paragraph break]Think of me as a direct conduit to the Minds of the Giants who are imaginging this whole universe. I'll be giving you some guidance, but it's up to you to do your part to help the world grow and thrive.[as normal]"

The player is in Beginning.

Volume - Gentle Island

Gentle_Island is a region. The printed name is "Gentle Island".

Book - Streets

Chapter - Next Step

[Next Step needs some stuff to examine and a full description]

Next Step is a street in Gentle_Island. The printed name is "The Next Step". "Description of Next Step." [TODO]

[one-way directions]
When play begins:
	change the south exit of Next Step to Nylon Phool;
	change the southwest exit of Next Step to Ortolana;
	change the southeast exit of Next Step to May Soup.

After examining the player for the first time:
now the bag is in the location.

A bag is an open, openable and wearable container. A bag is a player's holdall.
The description is "An honest, unpretentious burlap sack. You can put things in it."

Before going from Next Step:
	if the bag is not enclosed by the player:
		say "You pause to pick up the bag.";
		move the bag to the player;
	record "IF Master" as achieved;
	now tutorial mode is false.

To say navigation: say "There are no compass directions in Ur. A list of adjacent streets (if any) is in the status line above. You can travel to any street simply by typing the name of the street."

Chapter - Nylon Phool

Nylon Phool is a street in Gentle_Island. "A twisty river flows next to this street and mushrooms grow on the rock walls.[first time][paragraph break][as the parser]There are animals all over and they can really help you out. But you usually have to be nice to them first.[as normal][only]"

The skulls are scenery in Nylon Phool. The description is "A collection of skulls, just chilling on a mushroom. On closer look, you realize they're a strange species of mushroom. Whew."

One butterfly, one piggy and one chicken are in Nylon Phool.

Chapter - Ortolana

Ortolana is a street in Gentle_Island. "The homes on this street are made from hollowed out bottle trees. You can [link]enter[as]enter hut[end link] one of the huts. The local flora consists of groddle plants, bogwillow, firebean plants, cattails and mushrooms. Unripe barnacles are forming on the side of the huts.[paragraph break]You can see a table here[if the number of things on the table is not zero], on which is [a list of things on the table][end if]."

The table is a supporter and scenery in Ortolana.
The description is "It's a simple wooden table."

One common crudites, one flummery, one spicy grog and one fruity juice are on the table.

The hut is an open unopenable door and scenery in Ortolana. It is inside from Ortolana and outside from Shimla Shack.

Chapter - Shimla Shack

Shimla Shack is a room in Gentle_Island. "You are inside a firebog house. A stained red rug covers the floor and the walls are adorned with paper talismans, charms and strings of dried lizards. You can [link]exit[as]exit hut[end link] the hut to return to Ortolana.[first time][paragraph break][as the parser]In Ur, there are lots of things to harvest, craft and eat.[as normal][only][paragraph break]You can see a table here[if the number of things on the counter is not zero], on which is [a list of things on the counter][end if]."

The describe what's on scenery supporters in room descriptions rule is not listed in any rulebook.

The counter is a supporter and scenery in Shimla Shack. The printed name is "the table". Understand "table" as counter.
The description is "It's a rather nice kitchen table."

Six tomatoes, one basic cheese, six buns, and the knifen board are on the counter.

Chapter - Briarset Croft

Briarset Croft is a street in Gentle_Island. "Description of Briarset Croft." [TODO]

Chapter - May Soup

May Soup is a street in Gentle_Island. "Description of May Soup." [TODO]

One fruit tree, one spice plant, one bean tree, one egg plant, one bubble tree, one gas plant, and the watering can are in May Soup.

Chapter - Namaste

Namaste is a street in Gentle_Island. "This street is home to red, blue and purple trees, various ferns, a cluster of Grass Guys and a strange Purple Creature[if the teleporter is unlocked]. There is a large wooden sign here[end if]."

When leaving begins:
	Now the room illustration of Namaste is Figure Namaste Sign;
	move the sign to Namaste;
	change the south exit of Namaste to Savanna Sunset.

The strange purple creature is a person and scenery in Namaste. Understand "ghost" as purple creature.
The description is "It looks a bit like a ghost. Less scary, though, what with being purple."

The grass guys is a person and scenery in Namaste.
The description is "Someone has painted faces on these rocks. Or maybe they're alive. You're not quite sure."

A sign is scenery. The description is "The sign reads 'This way to leave Gentle Island'. The arrow points towards [link]Savanna Sunset[end link]." Understand "arrow" as the sign. Understand "wooden sign" and "wooden" and "large wooden sign" as sign.

Reading is an action applying to one thing.
Understand "read [sign]" as reading.
Instead of reading the sign: try examining the sign.

Chapter - Savanna Sunset

Savanna Sunset is a street in Gentle_Island. "At one end of this street lined with pampas and acacia trees is a teleporter."

The teleporter is a locked door. It is south from Savanna Sunset. The description is "This teleporter will take you off Gentle Island so you can explore the rest of the world. When you are ready to go, you may [link]ENTER[as]ENTER teleporter[end link] it."

Every turn while the teleporter is locked:
	if EZ Cooking has ended and Animal Kinship has ended and Light Green Thumb has ended:
		now the teleporter is unlocked;
		say "[as the parser]You are about ready to see what the world has to offer: plumb the depths of Ilmenskie Caverns, ascend the heights of Rasana and fly through the trees of Roobrik... there's a lot to explore! The way off Gentle Island is pretty easy to find. Find it. Take it. Do it!![as normal]".

                
[if EZ Cooking has happened and Animal Kinship has happened and Light Green Thumb has happened, now the teleporter is unlocked.]

Instead of entering the teleporter:
	record "Escaped" as achieved;
	now player's mood is maximum mood;
	now player's energy is maximum energy;
	end the story finally saying "You have finished the tutorial!"

Leaving is a scene. Leaving begins when the teleporter is unlocked.

Book - Mapping

Nylon Phool is east of Ortolana and west of May Soup.
Namaste is southeast of Ortolana and southwest of May Soup.
Briarset Croft is southeast of Nylon Phool.

Volume - Hell One

Naraka is a region.

Book - Hell One

Hell One is a room in Naraka.
"So this is what being dead is like. The sky is blood red, but everything else--including you--is black and grey. To the left is a giant three-eyed floating stone. To the right is a gaping hole with an arrow pointing down and skeletal hands reaching up. The arrow reads 'Descend.'"
In Hell One are a bunch of hellish grapes.

Hell Door is a locked door and scenery. It is north of Hell One. The description is "There is a random door here. Unfortunately, it is locked, and you don't have the key. So you will never know what sort of secrets lie behind it. It's probably just a janitorial closet."

Before opening hell door: say "The door is locked, and you don't have the key." instead.
Before unlocking hell door with something: say "You don't have the key." instead.

Trisor is scenery in Hell One. The description is "It's a giant floating stone with three eyes, a rather humanoid nose and a mouth. It does not look friendly. The less said about it the better." Understand "stone" and "triclops" and "giant" and "monster" as Trisor.

Hole to Hell is an open unopenable door and scenery. It is down from Hell One. Through Hole to Hell is Hell One. "This hole leads to the rest of Naraka."

Before going down from Hell One:
	say "Naraka may not be suitable for those with a sensitive disposition. Also, you have a tutorial to complete." instead.

Instead of entering Hole to Hell:
	try going down.

Understand "complete tutorial" as a mistake ("Haha, no. It's not that easy.").

Book - Dying

To kill the player:
	clear the screen;
	now the player's energy is 0;
	now the player's mood is 0;
	say "Uh oh. You croaked! Bummer! Just find some hellish grapes on the ground in here and give them some good squashing. Keep going until you get out!";
	now the most recent location of the player is the location;
	move the graveside marker to the location;
	move the player to Hell One;
	play the room sound for Hell One;
	depict Figure blank;
	now the item illustration of the player is Figure Dead.

Book - Resurrection

Chapter - Graveside Marker

The graveside marker is a fixed in place thing.
The description is "This graveside marker indicates that someone died here, namely you. It bears the acronym 'SIH', meaning 'Squish in Hell'."

Chapter - Grapes

A bunch of hellish grapes is a thing. Understand "grape" as grapes.
The description is "A deceptively innocuous-looking bunch of hellish grapes."
The plural of bunch of hellish grapes is bunches of hellish grapes.

Instead of doing anything except examining or attacking or requesting actions for the grapes:
say "Do your purgatory duty and squish those grapes."

Grapes-squished is a number that varies. Grapes-squished is 0.

Understand the command "squish" and "crush" as attack.
Instead of squeezing the grapes: try attacking the grapes.

To revive the player:
	clear the screen;
	say "[paragraph break]You have been revived. You are seriously pooped, though. You need energy to get out of it.";
	record "Zombie" as achieved;
	now the player's energy is maximum energy / 2;
	now the player's mood is maximum mood / 2;
	now grapes-squished is 0;
	now the item illustration of the player is Figure Player;
	if sound-allowed is true, stop the background sound;
	if sound-allowed is true, play sound of forest in background with loop;
	move the player to the most recent location of the player;
	play the room sound for the most recent location of the player;
	depict figure blank.
  
Does the player mean attacking the grapes: it is very likely.

Instead of attacking the bunch of hellish grapes:
	say "You [one of]squish[or]squash[or]crush[at random] a bunch of hellish grapes. Another bunch of grapes appears immediately.";
	increase grapes-squished by 1;
	if sound-allowed is true, play sound of squishing grapes in foreground;
	if grapes-squished is 4, revive the player.

Instead of dropping something when the location is Hell One:
	say "You cannot drop that here."

Instead of eating something when the location is Hell One:
	say "You are dead. You have no need for food."

Instead of drinking something when the location is Hell One:
	say "You are dead. You have no need for drink."
	[exception: wine of the dead]

World ends here.