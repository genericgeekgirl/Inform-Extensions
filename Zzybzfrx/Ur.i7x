Ur by Zzybzfrx begins here.

Use authorial modesty.

Include Giants by Zzybzfrx.
Include Hidden Items by Krister Fundin.

Volume - Images

Volume - Kinds of Rooms

A street is a kind of room.
An underground-street is a kind of street.
A secret-room is a kind of room. The printed name of a secret-room is "Hidden Room".
A special-room is a kind of room.
A machine-room is a kind of room. The printed name of a machine-room is "Community Machine Room".
An herb-garden is a kind of street. The printed name of an herb-garden is "Herb Gardens".

A community-garden is a kind of street.
[Gardens have these signs: 'All may plant, all may harvest.' and 'Free to plant, free to take.']
[Alternative signs: 'Plant for everyone, harvest what you need.' and 'Share these plots, share their bounty.']

A fox-preserve is a kind of street.
["This preserve is well known for its abundance of foxes.-OR-This is a premier fox brushing preserve. Sometimes you can see a fox here."]
["The smell of damp foxes drifts over NEARBY.-OR-The faint sound of foxes can be heard drifting in from NEARBY."]

Volume - Logistics

Procedural rule: substitute the new room description heading rule for the room description heading rule.	

This is the new room description heading rule:
say "[bold type][location][if the location is a street], [map region of location][end if][roman type]".
                                
Book - Moving Shrines and Vendors into the Location

[
Before going to a street (called S):
	if S is a street listed in the Table of Shrines and Vendors:
		move shrine entry to S;
		move vendor entry to S.

Before going to a community-garden (called G):
move the Gardening Tools Vendor to G.

Before going to a fox-preserve (called F):
move the fox ranger to F.
]

Book - Going in Directions

Volume - Custom Directions

Witch is a direction. The opposite of witch is no-witch.
No-Witch is a direction. The opposite of no-witch is witch.
Warlock is a direction. The opposite of warlock is no-warlock.
No-warlock is a direction. The opposite of no-warlock is warlock.

Right is a direction. The opposite of right is left.
Left is a direction. The opposite of left is right.
Index map with left mapped as west.
Index map with right mapped as east.

Volume - Outside Ur

Outside Ur is a region.

Staging is a room in Outside Ur. "You should not be here. Something is broken." The printed name is "Go away."

PlayerStart is a room in Outside Ur. "When you are ready to continue, type IMAGINE. To return here, type HOME.[first time][paragraph break][as the parser]If you are unfamiliar with Interactive Fiction, type HELP for a quick introduction on how to play[as normal].[only]". The printed name is "And so it begins..."

Before playing for the first time:
now the printed name of PlayerStart is "Your home.";
now the description of PlayerStart is "This is your new home. It was somebody's old home."

[Home contains various furniture items. Not super customizable. No personal gardens here. KITCHEN]

Wardrobe is a room in Outside Ur.
[TODO: mirror and a closet full of clothing]

The player is in PlayerStart.

Volume - Gentle Island

Gentle_Island is a region. The printed name is "Gentle Island".

Book - Streets

Progress Way is a street in Gentle_Island.
In Progress Way is a street spirit. [bag vendor]
In Progress Way is the Shrine Tii. [TODO]

Diversionary Path is a street in Gentle_Island. 
In Diversionary Path are a gas plant.

Doonboggle Trail is a street in Gentle_Island. 
In Doonboggle Trail are a bean tree, a fruit tree.

Surveyors Stroll is a street in Gentle_Island. The printed name is "Surveyor's Stroll". 
In Surveyors Stroll are a magic rock and a fruit tree.

Book - Mapping

Progress Way is west of Surveyors Stroll.
Diversionary Path is north of Doonboggle Trail, northwest of Surveyors Stroll and northeast of Progress Way.
Doonboggle Trail is southeast of Progress Way and southwest of Surveyors Stroll.

Volume - Naraka

Naraka is a region.

Chapter - Streets

[need to squash five bunches of hellish grapes - make sure enough are available! maybe move some into every room]
[no eating or drinking in hell, except wine of the dead and stinky cheese]
[upon leaving hell, return to most recent location of the player]
[leaving requires, squashing grapes, drinking the hell wine or a get-out-of-hell-free card]
[entering requires that energy equals 0]

Section - Hell One

Hell One is a street in Naraka.
"So this is what being dead is like. The walls are bright red, but everything else--including you--is black and grey. To the left is a giant three-eyed floating stone. To the right is a gaping hole with an arrow pointing down and skeletal hands reaching up. The arrow reads 'Descend.'"
In Hell One are a bunch of hellish grapes.

Trisor is scenery in Hell One. The description is "It's a giant floating stone with three eyes, a rather humanoid nose and a mouth. It does not look friendly. The less said about it the better." Understand "stone" and "triclops" and "giant" as Trisor.

Hole to Hell is an open unopenable door. It is down from Hell One. Through it is Mahatam Audarika.

Before entering Hell One:
say "Uh oh. You croaked! Bummer! Just find some hellish grapes on the ground in here and give them some good squashing. Keep going until you get out!"

naraka-warning is a number that varies. naraka-warning is 3.

Check going down from Hell One (this is the triple warning rule):
if naraka-warning is greater than 0, say "[one of]Warning: Naraka may not be suitable for those with a sensitive disposition. Explorer discretion is advised[or]Really: we mean it. If seeing gore makes you unhappy, do not go in[or]This is your final warning. You're on your own from here[cycling]." instead.

Section - The Rest of Hell

Dhuma Maya is a street in Naraka.
In Dhuma Maya are a bunch of hellish grapes.

Mada Tamaha is a street in Naraka.
In Mada Tamaha are a bunch of hellish grapes.

Mahatam Audarika is a street in Naraka.
In Mahatam Audarika are a bunch of hellish grapes.

Panka Surazu is a street in Naraka.
In Panka Surazu are a bunch of hellish grapes.

Ratna Vitteha is a street in Naraka.
In Ratna Vitteha are a bunch of hellish grapes.

Valuka Himsa is a street in Naraka.
In Valuka Himsa are a bunch of hellish grapes.

The Hell Bar is a room in Naraka.
The Hellish Bartender is here.
The Hell Bar is inside from Panka Surazu.

Chapter - Mapping

Northeast of Mahatam Audarika is northwest of Dhuma Maya.
Southeast of Dhuma Maya is northeast of Rata Vitteha.
Northwest Ratna Vitteha is southwest of Mada Tamaha.
Northeast of Mada Tamaha is northwest of Valuka Himsa.
Southeast of Valuka Himsa is northeast of Panka Surazu.

Volume - The Seams

The Seams is a region.

A seams-street is a kind of street.

Chapter - Doors

[
ETTDoor is a Orange-Blue Square Door. It is warlock from Egret Taun Towers Basement. [Besara]
HSMDoor is a Yellow-Purple Triangle Door. It is warlock from Hauki Seeks Manor Basement. [Bortola]
HHTDoor is a Green-White Circle Door. It is warlock from Hakusan Heaps Towers Basement. [Muufo]
]

[TODO: Upon entering a seam street, unlock the other door; relock both when player leaves.]
[Todo: doors need to be locked from the outside, and unlocked from the inside]

Chapter - Streets

Distant End is a seams-street in the Seams. [pond]

Wintry Place is a seams-street in The Seams.
The Sno Cone Vending Machine is here.
[Because of the coldness, you lose 1 energy for every second you stay in Wintry place. You can cease this by eating something hearty.]

Volume - Enchanted Forest

[Enchanted forests are inside hollowed treets, accessible through doors on enchanted trees in Ur. Inside are lots of wood tress, which magically regrow when harvested and cleared. Tulpani shrink down in order to enter the tree.]

Enchanted Forest is a region.

Grimssea Hollow is a room in Enchanted Forest.
[17 wood trees]
GHDoor is a hidden door. It is warlock from Grimssea Hollow and witch from Grimssea Bottom. [Groddle_Forest]

Volume - Groddle Forest, Groddle Isle

Groddle_Forest is a region. The printed name is "Groddle Forest".

[Groddle is heavily treed, although it also has some underground areas. The Shrines are made of stone and the Street Spirits are wood-style.]
[This region supports Bean Trees, Bubble Trees, Fruit Trees, and Wood Trees.]

Chapter - Streets

Adanac is a street in Groddle_Forest.
In Adanac is a piggy, a fruit tree, a bubble tree, a bean tree.

Addingfoot Trip is a street in Groddle_Forest.
In Addingfoot Trip is a bean tree, a bubble tree, a fruit tree.

Addysshot Croft is a street in Groddle_Forest.
In Addysshot Croft is a bubble tree, a fruit tree.

Berecroy Woods is a street in Groddle_Forest.
In Berecroy Woods is a fruit tree, a bubble tree, a bean tree.

Blackberry Glebe is a street in Groddle_Forest.
In Blackberry Glebe is a bean tree, a fruit tree, a bubble tree.

Blue Mountain Bore is a street in Groddle_Forest.
In Blue Mountain Bore is a egg plant, a dirt pile, a piggy, a metal rock.

Burnabee is a street in Groddle_Forest.
In Burnabee is a bubble tea, a bubble tree, a spice plant, a bean tree.

Cranbury Coppice is a street in Groddle_Forest.
In Cranbury Coppice is a piggy, a fruit tree, a bean tree, a gas plant.

Doon Way is a street in Groddle_Forest.
In Doon Way is a piggy, a spice plant, a fruit tree, a patch, a bean tree.

Evanfell Craine is a street in Groddle_Forest.
In Evanfell Craine is a fruit tree, a bean tree.

Fairgower Lane is a street in Groddle_Forest.
In Fairgower Lane is a bubble tree, a piggy, a bean tree.

Ferncaster End is a street in Groddle_Forest.
In Ferncaster End is a fruit tree, a dullite rock.

Fern End is a street in Groddle_Forest.
In Fern End is a bean tree, a fruit tree, a bubble tree, a piggy.

Follybottom Stritt is a street in Groddle_Forest.
In Follybottom Stritt is a bubble tree, a fruit tree, a bean tree.

Grand Mile is a street in Groddle_Forest.
In Grand Mile is a bean tree, a fruit tree.

Grimssea Bottom is a street in Groddle_Forest.
In Grimssea Bottom is a piggy, a bubble tree, a bean tree, a spice plant.

Groddle_Forest Junction is a street in Groddle_Forest.
In Groddle_Forest Junction is a bubble tree, a spice plant, a gas plant, a fruit tree, a bean tree.

Hackfast Quicks is a street in Groddle_Forest.
In Hackfast Quicks is a bean tree, a fuelmaker, a bubble tree, a fruit tree.

Hayden Seek Alley is a street in Groddle_Forest.
In Hayden Seek Alley is a bean tree, a piggy, a bubble tree, a fruit tree, a smuggler.

Hechey Track is a street in Groddle_Forest.
In Hechey Track is a bubble tree, a fruit tree, a meat, a piggy, a crab.

Hellenturret Pass is a street in Groddle_Forest.
In Hellenturret Pass is a bean tree.

Middle Arbor is a street in Groddle_Forest.
In Middle Arbor is a bean tree, a fruit tree, a garden.

Middle Valley Clearing is a street in Groddle_Forest.
In Middle Valley Clearing is a wood tree, a fruit tree, a bubble tree, a spice plant, a piggy.

Northwest Passage is a street in Groddle_Forest.
In Northwest Passage is a gas plant, a bubble tree, a piggy, a fruit tree, a bean tree, a dirt pile, a egg plant, a sparkly rock.

Ozacosta Avenue is a street in Groddle_Forest.
In Ozacosta Avenue is a fruit tree, a bubble tree, a wood tree.

Pashas Place is a street in Groddle_Forest. The printed name is "Pasha's Place".
In Pashas Place is a fruit tree, a heli kitty, a bubble tree, a piggy.

Sapslow Tweeds is a street in Groddle_Forest.
In Sapslow Tweeds is a bubble tree, a fruit tree.

Switchback is a street in Groddle_Forest.
In Switchback is a metal rock, a dirt pile, a beryl rock, a egg plant.

Sylvan Grove is a street in Groddle_Forest.
In Sylvan Grove is a wood tree, a fruit tree.

The Great Hole to Ix is a street in Groddle_Forest.
In The Great Hole to Ix is a bubble tree, a bean tree, a fruit tree, a spice plant.

Thicket is a street in Groddle_Forest.
In Thicket is a piggy, a fancy cheese, a bean tree, a bubble tree, a gas plant, a wood tree.

Ti Street is a street in Groddle_Forest. The printed name is "Tii Street". Understand "Tii Street" and "Tii" as Ti Street.
In Ti Street is a fruit tree, a bubble tree, a bean tree, a wood tree, a spice plant, a piggy.

Upper Valley Heights is a street in Groddle_Forest.
In Upper Valley Heights is a bubble tree, a fruit tree, a piggy.

Verdant Green is a street in Groddle_Forest.
In Verdant Green is a bubble tree.

Volume - Uralia & Ix, Miscellaneous Islands

Book - Uralia

Uralia is a region.
[Bubble Tree, Fruit Tree, Gas Plant]

Chapter - Streets

Cebarkul is a street in Uralia.
In Cebarkul are a sparkly rock, a bundle of joy, a dullite rock.
[connects to GGW in Ix]

The Missing Floor is a secret-room in Uralia.
[Creepy place with climbable vines, ripped posters and dripping faucets a plenty.]

Oktyabrya is a street in Uralia.
In Oktyabrya are a beryl rock, a bean tree, a crab, a earthshaker, a dullite rock.
[ladder vine to Groddle_Forest]

Book - Ix

RIx is a region. The printed name is "Ix".
[Spice Plants]

Chapter - Streets

East Spice is a street in RIx.
In East Spice are a spice plant, a paper tree.

Guillermo Gamera Way is a street in RIx.
In Guillermo Gamera Way are a bubble tree, a spice plant.
[TODO: bridge to Cebarkul in Uralia and entrance to UFE]

Uncle Friendlys Emporium is a room in RIx. The printed name is "Uncle Friendly's Emporium".
Uncle Friendlys Emporium is inside from Guillermo Gamera Way.

West Spice is a street in RIx.
In West Spice are a spice plant.

Book - Mapping

[TODO]

Volume - Ancestral Lands, Grumbla

An ancestral-land is a kind of street.
Zhambu is a region.

["The gravity of countless ages weighs heavily on your shoulders. You can't spend too long here!"]
[more than x turns, and you are sent randomly somewhere]

[The Ancestral Lands: savanna-type appearance and lack features normally common throughout Ur. Of note is the lack of trees (except the occasional paper tree), rocks, and animals. Dirt mounds are more common, though still rare. The Juju Bandits are found throughout the Ancestral Lands and care should be taken to avoid them.]

[Throughout the region are 'traps' with question marks on them. Ancestral remnants rewarded by stepping on these traps give you more time to spend in Xalanga: Super Old Mitochondrial DNA (60 sec), Golgi Apparatus (40 sec), Endoplasmic Reticulum (20 sec), and Vacuole (10 sec). Gandlevery Seeds, Hairball Flower Seeds, Yellow Crumb Flower Seeds, Purple Flower Seeds, Rubeweed Seeds, Silvertongue Seeds]

Chapter - Streets

Chuff Chase 1 is a ancestral-land in Zhambu. In Chuff Chase 1 is a paper tree.
Chuff Chase 2 is a ancestral-land in Zhambu. In Chuff Chase 2 is a dirt pile.
Chuff Chase 3 is a ancestral-land in Zhambu. In Chuff Chase 3 is a dirt pile, a paper tree.
Chuff Chase 4 is a ancestral-land in Zhambu. In Chuff Chase 4 is a dirt pile.
Boor Bane A is a ancestral-land in Zhambu. In Boor Bane A is a paper tree.
Boor Bane B is a ancestral-land in Zhambu. In Boor Bane Bee is a dirt pile.
Boor Bane C is a ancestral-land in Zhambu. In Boor Bane C is a dirt pile, a paper tree.
Boor Bane D is a ancestral-land in Zhambu. In Boor Bane D is a paper tree.
Yokel Yarn N is a ancestral-land in Zhambu. In Yokel Yarn 1 is a dirt pile.
Yokel Yarn E is a ancestral-land in Zhambu. In Yokel Yarn 4 is a paper tree.
Yokel Yarn S is a ancestral-land in Zhambu. In Yokel Yarn 5 is a dirt pile.
Yokel Yarn W is a ancestral-land in Zhambu. In Yokel Yarn 1 is a dirt pile.

Chapter - Mappings

Yokel Yarn N is north of Yokel Yarn S, northwest of Yokel Yarn E and northeast of Yokel Yarn W.
Yokel Yarn E is east of Yokel Yarn W and northeast of Yokel Yarn S.
Yokel Yarn S is southeast of Yokel Yarn W.

Boor Bane A is north of Boor Bane B, east of Boor Bane D and northeast of Yokel Yarn E.
Boor Bane B is east of Boor Bane C and southeast of Yokel Yarn S.
Boor Bane C is south of Boor Bane D and southwest of Yokel Yarn W .
Boor Bane D is northwest of Yokel Yarn W.

Chuff Chase 1 is north of Yokel Yarn N, northeast of Chuff Chase 4 and northwest of Chuff Chase 2.
Chuff Chase 2 is east of Yokel Yarn E and northeast of Chuff Chase 3.
Chuff Chase 3 is south of Yokel Yarn S and southeast of Chuff Chase 4.
Chuff Chase 4 is west of Yokel Yarn W.

Boor Bane B is northwest of Pental Leave. [Besara]
Boor Bane D is southeast of Injeba Wedge. [Tamila]

Volume - Pollokoo, Grumbla

Pollokoo is a region.

[mining]
[TODO: more streets?]

Chapter - Streets

Axis Denyde is a street in Pollokoo.
Pig Explorer is here.
[place a teleportation script somewhere]

ADHole is an open unopenable door. It is down from Axis Denyde. Through it is Ajiboo Hood. The description is "There is a hole in the ground. Next to it is a sign reading 'EXIT'."

Intate Treats is a street in Pollokoo.
In Intate Treats is a beryl rock, a metal rock, a sparkly rock, a dullite rock.

Cave-in is a locked door. It is down from Intate Treats. Through it is Axis Denyde. The printed name is "pile of rocks". The description is "The tunnel has caved in here, preventing access to whatever is beyond it." Instead of entering Cave-in, say "Those rocks aren't going anywhere. You're going to need to find another way in."

Ajiboo Hood is a street in Pollokoo.
In Ajiboo Hood is a beryl rock, a egg plant, a dullite rock, a metal rock, a sparkly rock.

Awasa Wash is a street in Pollokoo.
In Awasa Wash is a dullite rock, a sparkly rock, a beryl rock.

Dhalakk Dalliance is a street in Pollokoo.
In Dhalakk Dalliance is a metal rock, a sparkly rock, a beryl rock, a dullite rock.

Hamli Egza is a street in Pollokoo.
In Hamli Egza is a beryl rock, a metal rock, a sparkly rock, a dullite rock.

Kikal Kalzo is a street in Pollokoo.
In Kikal Kalzo is a beryl rock, a dullite rock, a sparkly rock, a metal rock.

Kotteletti Kota is a street in Pollokoo.
In Kotteletti Kota is a sparkly rock, a dullite rock, a beryl rock, a metal rock.

Quluuwaa Luwa is a street in Pollokoo.
In Quluuwaa Luwa is a sparkly rock, a egg plant, a metal rock, a beryl rock, a dullite rock.

Sambossa Bossa is a street in Pollokoo.
In Sambossa Bossa is a dullite rock, a sparkly rock, a metal rock, a beryl rock.

Tibsii Wibbs is a street in Pollokoo.
In Tibsii Wibbs is a dullite rock, a sparkly rock, a metal rock, a beryl rock, a egg plant.

Zigni Zags is a street in Pollokoo.
In Zigni Zags is a beryl rock, a sparkly rock, a metal rock, a dullite rock.

ZilZiil Zeal is a street in Pollokoo.
In ZilZiil Zeal is a dullite rock, a beryl rock, a sparkly rock, a metal rock.

Volume - Fenneq, Grumbla

[fox preserves]

Fenneq is a region.

Budae Bada is a street in Fenneq.
In Budae Bada is a bubble tree, a fruit tree, a metal rock.

Chettar Lings is a street in Fenneq.
In Chettar Lings is a fruit tree.

Deodak Nabak is a street in Fenneq.
In Deodak Nabak is a heli kitty, a fruit tree, a metal rock.

Dingal Lin is a street in Fenneq.
In Dingal Lin is a bean tree, a metal rock, a fruit tree, a bubble tree.

Gemyan Guome is a street in Fenneq.
In Gemyan Guome is a metal rock, a fruit tree.

Jappa Chae is a street in Fenneq.
In Jappa Chae is a fruit tree, a bean tree, a metal rock.

Jigoree Galbee is a street in Fenneq.
In Jigoree Galbee is a fruit tree, a metal rock.

Maiwiwi Don is a street in Fenneq.
In Maiwiwi Don is a bubble tree, a metal rock.

Yeopsul Mumal is a street in Fenneq.
In Yeopsul Mumal is a fruit tree, a bean tree, a metal rock.

Bossam Preserve is a fox-preserve in Fenneq.

Volume - Drifa & Nottis, Grumbla

Book - Drifa

Drifa is a region.
[Snowy/ice region]

[TODO - remove streets]

Chapter - Streets

Chilling Light is a street in Drifa.
In Chilling Light are a ice nubbin.

Flurry Piles is a street in Drifa.
In Flurry Piles are a bubble tree, a ice nubbin.

Fort Aban Don is a street in Drifa.
In Fort Aban Don are a bubble tree, a ice nubbin.

Icicle Dangles is a street in Drifa.
In Icicle Dangles are a ice nubbin.

Vibrant Banks is a street in Drifa.
In Vibrant Banks are a bubble tree, a ice nubbin.

Bright Day is a street in Drifa.
In Bright Day is a wood tree, a ice nubbin, a bean tree.

Candy Cane Lane is a street in Drifa.
In Candy Cane Lane is a bubble tree, a ice nubbin.

Curling Lake is a street in Drifa.
In Curling Lake is a bubble tree, a ice nubbin.

Curving Clusters is a street in Drifa.
In Curving Clusters is a bubble tree, a ice nubbin, a bean tree.

Ding a Lingers is a street in Drifa.
In Ding a Lingers is a bubble tree, a ice nubbin.

Drooping Drift is a street in Drifa.
In Drooping Drift is a bubble tree, a ice nubbin.

Luminous Night is a street in Drifa.
In Luminous Night is a bubble tree, a ice nubbin.

Moonlit Grove is a street in Drifa.
In Moonlit Grove is a spice plant, a bubble tree, a ice nubbin.

Sliding Skimmers is a street in Drifa.
In Sliding Skimmers is a heli kitty.

Tree Mas is a street in Drifa.
In Tree Mas is a gas plant, a ice nubbin.

Book - Nottis

Nottis is a region.

Chapter - Streets

Awn Terio is a street in Nottis.
In Awn Terio is a wood tree, a bubble tree.

Brilyn Chelyn is a street in Nottis.
In Brilyn Chelyn is a bubble tree, a ice nubbin.

Dokk Rokk is a street in Nottis.
In Dokk Rokk is a dullite rock, a sparkly rock, a beryl rock, a ice nubbin.

Frysta Virki is a street in Nottis.
In Frysta Virki is a spice plant, a ice nubbin.

Glatour Stooir is a street in Nottis.
In Glatour Stooir is a ice nubbin, a bubble tree.

Hellinum Dum is a street in Nottis.
In Hellinum Dum is a beryl rock, a ice nubbin.

Joklin Seddin is a street in Nottis.
In Joklin Seddin is a bubble tree, a ice nubbin.

Klikka Kawer is a street in Nottis.
In Klikka Kawer is a bubble tree, a ice nubbin.

Lacier Landare is a street in Nottis.
In Lacier Landare is a ice nubbin, a bubble tree.

Lotha Harte is a street in Nottis.
In Lotha Harte is a sparkly rock, a ice nubbin, a bubble tree, a wood tree.

Myndun Snun is a street in Nottis.
In Myndun Snun is a beryl rock, a ice nubbin.

Pallur Runnar is a street in Nottis.
In Pallur Runnar is a ice nubbin.

Sickle Nappo is a street in Nottis.
In Sickle Nappo is a beryl rock, a ice nubbin.

Slappao Kalt is a street in Nottis.
In Slappao Kalt is a bubble tree, a fruit tree, a ice nubbin.

Snullin Ballin is a street in Nottis.
In Snullin Ballin is a bubble tree, a ice nubbin.

Stafli Joli is a street in Nottis.
In Stafli Joli is a heli kitty, a piggy, a bubble tree.

Stenina Jora is a street in Nottis.
In Stenina Jora is a beryl rock, a sparkly rock, a ice nubbin.

Stornur Sezzez is a street in Nottis.
In Stornur Sezzez is a sparkly rock, a beryl rock, a ice nubbin.

Toppa Tre is a street in Nottis.
In Toppa Tre is a spice plant, a bubble tree, a ice nubbin.

Tunglio Bru is a street in Nottis.
In Tunglio Bru is a bubble tree, a gas plant.

Volume - Muufo, Grumbla

Muufo is a region.

Chapter - Streets

The Forgotten Floor is a secret-room in Muufo.
[ bears a resemblance of the other two floors.  But it also has its own special distinction.  It looks more of a sewer, holding leaking pipes and dripping walls.  One thing that is strange about the Forgotten Floor is that it has something that looks like a cage at the left side of the room.]
[Odena Odes, Muufo.  Once you arrive there, you have to go into go into the underground section of the place to the far right.  Jump with the usual levitation or spinach]
[The forgotten floor is a street in Muufo.
In The forgotten floor is a note, an elemental pouch]

Baeli Bray is a street in Muufo.
In Baeli Bray is a dullite rock.

Bettano Testament is a street in Muufo.
In Bettano Testament is a patch, a metal rock, a dullite rock.

Chima Chore is a street in Muufo.

Desmona Dr is a street in Muufo.
In Desmona Dr is a piggy, a bean tree, a fruit tree.

Finugo Fugue is a street in Muufo.
In Finugo Fugue is a dullite rock, a metal rock, a bean tree.

Ginseng Grope is a street in Muufo.
In Ginseng Grope is a fruit tree, a metal rock, a wood tree, a dullite rock.

Hakusan Heaps is a street in Muufo.
In Hakusan Heaps is a bubble tree, a metal rock, a fruit tree, a dullite rock.

Hakusan Heaps Towers is a street in Muufo.
In Hakusan Heaps Towers is a notice board, a note.

Hakusan Heaps Towers Basement is a street in Muufo.
[Hakusan Heaps Towers Basement has a seams entrance]

Hanmo Hiss is a street in Muufo.
In Hanmo Hiss is a patch, a piggy, a dullite rock.

Kalware Mare is a street in Muufo.
In Kalware Mare is a bubble tree, a bean tree, a fruit tree.

Kumida Middles is a street in Muufo.
In Kumida Middles is a fruit tree, a dullite rock, a metal rock.

Matsua Mossy is a street in Muufo.
In Matsua Mossy is a patch, a dullite rock, a metal rock.

Melalu Mile is a street in Muufo.
In Melalu Mile is a wood tree, a bean tree, a bubble tree.

Mimosa Mix is a street in Muufo.
In Mimosa Mix is a bean tree, a dullite rock, a metal rock, a bubble tree.

Muufo Start is a street in Muufo.
In Muufo Start is a patch.

Nira Nooks is a street in Muufo.
In Nira Nooks is a metal rock, a fruit tree.

Nowaa Holler is a street in Muufo.
In Nowaa Holler is a dullite rock, a egg plant.

Okara Cast is a street in Muufo.
In Okara Cast is a fruit tree, a bubble tree.

Osechi Oath is a street in Muufo.
In Osechi Oath is a dullite rock, a wood tree.

Panko Press is a street in Muufo.
In Panko Press is a bean tree, a fruit tree, a dullite rock.

Patchouli Preamble is a street in Muufo.
In Patchouli Preamble is a fruit tree, a dullite rock.

Salix Seach is a street in Muufo.
In Salix Seach is a patch, a fruit tree.

Seki Shim is a street in Muufo.
In Seki Shim is a fruit tree, a dullite rock, a metal rock, a bubble tree.

Shoga Links is a street in Muufo.
In Shoga Links is a patch, a metal rock, a bean tree.

Sobane Banes is a street in Muufo.
In Sobane Banes is a patch, a dullite rock.

Takeno Tides is a street in Muufo.
In Takeno Tides is a dullite rock, a bean tree.

Takuan This is a street in Muufo.
In Takuan This is a bubble tree, a bean tree, a fruit tree, a metal rock.

Umebo Bodes is a street in Muufo.
In Umebo Bodes is a patch, a fruit tree.

Volume - Tamila, Grumbla

Tamila is a region.

Chapter - Streets

The lost floor is a secret-room in Tamila.
[The Lost Floor shares the same creepy, run down feel as the Missing Floor. It is brighter, with more open windows.]
[Goorsh Gam, Tamila.  If you see an apartment in the middle of the street, then you are in the right place.  Use spinach or levitation to get to the to one of the branches to the left of the apartment.  Jump from branch to branch until you reach a dead end on a branch.  Again, use levitation or spinach to jump the up and to the left.]

Afar Whence is a street in Tamila.
In Afar Whence is a carrot seed.

Ambo Aims is a street in Tamila.
In Ambo Aims is a fruit tree, a spice plant, a bean tree.

Awagni Walk is a street in Tamila.
In Awagni Walk is a bean tree, a fruit tree.

Bulaa Clacks is a street in Tamila.
In Bulaa Clacks is a bubble tree, a piggy, a wood tree.

Buna Belt is a street in Tamila.
In Buna Belt is a bean tree, a fruit tree.

Chari Chalks is a street in Tamila.

Ensete Sets is a street in Tamila.
In Ensete Sets is a fruit tree, a bubble tree.

Firfire Frees is a street in Tamila.
In Firfire Frees is a fruit tree.

Gedeo Grails is a street in Tamila.
In Gedeo Grails is a bubble tree, a bean tree.

Geeze Bets is a street in Tamila.
In Geeze Bets is a bean tree, a fruit tree.

Goorsh Gam is a street in Tamila.
In Goorsh Gam is a fruit tree, a bean tree.

Gurag Green is a street in Tamila.
In Gurag Green is a bubble tree.

Injeba Wedge is a street in Tamila.
In Injeba Wedge is a bean tree, a bubble tree, a fruit tree.

Jeban Journey is a street in Tamila.
In Jeban Journey is a fruit tree.

Kebra Glories is a street in Tamila.
In Kebra Glories is a fruit tree, a spice plant.

Kifti Crown is a street in Tamila.
In Kifti Crown is a bean tree, a fruit tree, a bubble tree.

Maale Bads is a street in Tamila.
In Maale Bads is a fruit tree.

Meade Weeds is a street in Tamila.
In Meade Weeds is a bean tree, a gas plant.

Mesekel Maybes is a street in Tamila.
In Mesekel Maybes is a fruit tree, a bubble tree.

Meskel Move is a street in Tamila.
In Meskel Move is a bean tree.

Mesob Medium is a street in Tamila.
In Mesob Medium is a spice plant, a fruit tree.

Prutki Pardons is a street in Tamila.
In Prutki Pardons is a fruit tree, a heli kitty, a wood tree.

Qabena Quaint is a street in Tamila.
In Qabena Quaint is a fruit tree, a bean tree.

Sheba Shales is a street in Tamila.
In Sheba Shales is a piggy, a slow gin fizz, a bean tree.

Sini Shake is a street in Tamila.
In Sini Shake is a fruit tree.

Tejj Trades is a street in Tamila.
In Tejj Trades is a fruit tree, a bean tree.

Tella Hella is a street in Tamila.
In Tella Hella is a bubble tree, a fruit tree, a bean tree.

Xhola Mades is a street in Tamila.
In Xhola Mades is a bean tree, a bubble tree, a wood tree.

Volume - Besara, Grumbla

Besara is a region.

Chapter - Streets

Besara Community Machine Room is a machine-room in Besara.
In Besara Community Machine Room are a fuelmaker, a woodworker, a blockmaker, a metal machine, a notice board.
[The Besara Community Machine Room is in from.. somewhere]

Akaki Cape is a street in Besara.
In Akaki Cape are a bubble tree, a fruit tree, a bean tree.
[one tree to climb]

Crillic Crit is a street in Besara.
In Crillic Crit are a bean tree, a bubble tree.
[inside log]
[connects to Tamila]

Dunlin Roble is a street in Besara.
In Dunlin Roble are a fruit tree.

Egret Taun is a street in Besara.
In Egret Taun are a gas plant, a fruit tree, a bubble tree.

Egret Taun Towers is a room in Besara.
In Egret Taun Towers are a notice board.

Egret Taun Towers Basement is a room in Besara.
[seam street entrance]

Pedieos Fig is a street in Besara.
In Pedieos Fig are a gas plant, a bubble tree.

Pental Leave is a street in Besara.
In Pental Leave are a patch, a fruit tree.
[connects to ancestral lands]

Volume - Bortola, Grumbla

Bortola is a region.

Chapter - Streets

Evi Effect is a street in Bortola.
In Evi Effect are a fruit tree, a dirt pile, a metal rock, a dullite rock.
[connects to tamila]

Hauki Seeks is a street in Bortola.
In Hauki Seeks are a fruit tree, a bean tree.

Hauki Seeks Manor is a room in Bortola.
"*thud* *thud* You hear sounds coming from one of the upper floors. You look around at the building interior and wonder if you should venture further."
In Hauki Seeks Manor are a notice board.

Hauki Seeks Manor Basement is a room in Bortola.
[seam street entrance]

Piene Question is a street in Bortola.
In Piene Question are a fruit tree, a beryl rock, a sparkly rock.
[little cave area]

Borem Summon is a street in Bortola.
In Borem Summon is a heli kitty, a fruit tree, a bubble tree.

Lampaan Avert is a street in Bortola.
In Lampaan Avert is a bean tree, a sparkly rock, a dullite rock, a metal rock.
[mushrooms; connects to muufo]

Volume - Firozi, Grumbla

Firozi is a region.

[Firozi features a combination of mountain climbing, meadows, beaches and waterfronts not found in other regions of Ur.]

Chapter - Streets

Afra Maf is a street in Firozi.
In Afra Maf is a patch, a bean tree.

Angla Mangle is a street in Firozi.
In Angla Mangle is a bean tree, a fruit tree.

Anista Mista is a street in Firozi.
In Anista Mista is a fruit tree, a bean tree.

Basma Asma is a street in Firozi.
In Basma Asma is a bubble tree, a patch.

Batata Tata is a street in Firozi.
In Batata Tata is a bean tree, a wood tree, a bubble tree.

Dolla Holla is a street in Firozi.
In Dolla Holla is a bubble tree, a fruit tree, a beryl rock, a dullite rock, a metal rock.

Kura Kura is a street in Firozi.
In Kura Kura is a bubble tree, a beryl rock, a metal rock.

Lavaku Lore is a street in Firozi.
In Lavaku Lore is a sparkly rock, a wood tree, a beryl rock, a fruit tree.

Matara Ara is a street in Firozi.
In Matara Ara is a beryl rock, a fruit tree, a metal rock, a wood tree.

Matsia Tia is a street in Firozi.
In Matsia Tia is a bean tree, a bubble tree, a dullite rock, a wood tree.

Mrandeya Minds is a street in Firozi.
In Mrandeya Minds is a dullite rock, a fruit tree, a bubble tree, a beryl rock.

Narasiha Seeha is a street in Firozi.
In Narasiha Seeha is a bubble tree, a fruit tree, a bean tree.

Prashura Sure is a street in Firozi.
In Prashura Sure is a fruit tree, a metal rock, a heli kitty.

Ramavata Vata is a street in Firozi.
In Ramavata Vata is a fruit tree, a bubble tree.

Rumina Ruma is a street in Firozi.
In Rumina Ruma is a fruit tree, a bean tree.

Tumera Hilda is a street in Firozi.
In Tumera Hilda is a bubble tree, a metal rock, a dullite rock, a beryl rock, a wood tree, a bean tree.

Valmiki Vall is a street in Firozi.
In Valmiki Vall is a bubble tree, a fruit tree.

Vamanda Van is a street in Firozi.
In Vamanda Van is a bean tree, a wood tree, a beryl rock, a fruit tree.

Varana Na is a street in Firozi.
In Varana Na is a beryl rock, a metal rock, a fruit tree.

Vartula Lura is a street in Firozi.
In Vartula Lura is a beryl rock, a fruit tree, a bean tree.

Vina Dosh is a street in Firozi.
In Vina Dosh is a wood tree, a dullite rock.

Volume - Folivoria, Grumbla

Folivoria is a region.

[sloths]

Chapter - Streets

[There is a teleporter in Chiti Tiga to Ain't That Dry in Vortex of Random. ]

Billore Crys is a street in Folivoria.
In Billore Crys is a bean tree, a knocker, a fruit tree, a sloth, a dirt pile.

Chiti Tiga is a street in Folivoria.
In Chiti Tiga is a dirt pile, a fruit tree.

Gomed Essoni is a street in Folivoria.
In Gomed Essoni is a knocker, a sloth, a bean tree, a dirt pile.

Gondata Moo is a street in Folivoria.
In Gondata Moo is a knocker, a dirt pile, a fruit tree, a sloth.

Haqiq Cedony is a street in Folivoria.
In Haqiq Cedony is a metal rock, a metal machine, a knocker, a dirt pile, a sloth, a fruit tree, a beryl rock.

Heera Amond is a street in Folivoria.
In Heera Amond is a dirt pile, a bean tree, a knocker, a sloth.

Katela Ameth is a street in Folivoria.
In Katela Ameth is a fruit tree, a dirt pile.

Lapix Lora is a street in Folivoria.
In Lapix Lora is a knocker, a dirt pile, a sloth, a bean tree.

Lolime Kakaneeli is a street in Folivoria.
In Lolime Kakaneeli is a fruit tree, a sloth, a dirt pile, a knocker.

Manak Ruba is a street in Folivoria.
In Manak Ruba is a sloth, a knocker, a fruit tree, a metal machine.

Moonga Coral is a street in Folivoria.
In Moonga Coral is a piggy, a metal rock, a dirt pile, a knocker, a fruit tree, a beryl rock, a sloth.

Moti Peral is a street in Folivoria.
In Moti Peral is a knocker, a fruit tree, a sloth, a bean tree, a dirt pile.

Neelam Saff is a street in Folivoria.
In Neelam Saff is a fruit tree, a dirt pile, a knocker, a sloth.

Panna Meral is a street in Folivoria.
In Panna Meral is a knocker, a bean tree, a piggy, a dirt pile, a metal machine, a sloth.

Pokhraj Topa is a street in Folivoria.
In Pokhraj Topa is a bubble tree, a dirt pile, a fruit tree.

Sunsitara Stona is a street in Folivoria.
In Sunsitara Stona is a dirt pile, a bean tree.

Tamar Garna is a street in Folivoria.
In Tamar Garna is a knocker, a dirt pile, a metal machine, a fruit tree, a sloth.

Turmali Tourma is a street in Folivoria.
In Turmali Tourma is a sloth, a dirt pile, a fruit tree, a knocker.


Volume - Jethimadh, Mazza'la

Jethimadh is a region.

[Jethimadh is known for its bog resources, which include Firefly Swarms, Jellisac Growth, Peat Bogs, and Mortar Barnacles.]
[add some jellisac growths]

Chapter - Streets

J Herb Gardens is an herb-garden in Jethimadh.
In J Herb Gardens is an herb garden.

Boan Stravenue is a street in Jethimadh.
In Boan Stravenue is a mortar barnacle, a spice plant.

Iso Roine is a street in Jethimadh.
In Iso Roine is a patch, a gas plant, a mortar barnacle, a peat bog.

Kala Close is a street in Jethimadh.
In Kala Close is a mortar barnacle, a peat bog.

Kalix Follows is a street in Jethimadh.
In Kalix Follows is a peat bog, a spice plant, a mortar barnacle.

Kiehiman Course is a street in Jethimadh.
In Kiehiman Course is a mortar barnacle.

Konemaen Jaunt is a street in Jethimadh.
In Konemaen Jaunt is a mortar barnacle, a gas plant.

Konka Brink is a street in Jethimadh.
In Konka Brink is a firefly, a mortar barnacle, a peat bog.

Koulato Cluster is a street in Jethimadh.
In Koulato Cluster is a peat bog, a mortar barnacle.
[There's a ladder behind a support beam that takes you to Ruta Asuncion, Ix]

Kyron Kreep is a street in Jethimadh.
In Kyron Kreep is a hyperspacetime portal door, a mortar barnacle, a peat bog.

Lentua Lane is a street in Jethimadh.
In Lentua Lane is a gas plant, a mortar barnacle, a peat bog.

Lonkari Line is a street in Jethimadh.
In Lonkari Line is a peat bog, a mortar barnacle, a gas plant.

Luiro Run is a street in Jethimadh.
In Luiro Run is a peat bog, a mortar barnacle, a gas plant.

Naata Garth is a street in Jethimadh.
In Naata Garth is a peat bog, a mortar barnacle, a spice plant.

Naatamo Way is a street in Jethimadh.
In Naatamo Way is a gas plant, a mortar barnacle, a spice plant, a peat bog.

Onto Parada is a street in Jethimadh.
In Onto Parada is a mortar barnacle, a spice plant.

Oulanka End is a street in Jethimadh.
In Oulanka End is a mortar barnacle, a firefly.

Paats Yield is a street in Jethimadh.
In Paats Yield is a gas plant, a mortar barnacle, a spice plant.

Raudan Rasp is a street in Jethimadh.
In Raudan Rasp is a gas plant, a peat bog, a mortar barnacle.

Simo Steer is a street in Jethimadh.
In Simo Steer is a mortar barnacle, a spice plant, a peat bog.

Svarta Swale is a street in Jethimadh.
In Svarta Swale is a gas plant, a spice plant, a peat bog, a mortar barnacle.

Sysma Link is a street in Jethimadh.
In Sysma Link is a peat bog, a mortar barnacle.

Tadaa Track is a street in Jethimadh.
In Tadaa Track is a mortar barnacle.

Tallus Gardens is a street in Jethimadh.
In Tallus Gardens is a gas plant, a mortar barnacle, a peat bog.

Tammer Path is a street in Jethimadh.
In Tammer Path is a gas plant.

Tana Trample is a street in Jethimadh.
In Tana Trample is a mortar barnacle, a gas plant, a peat bog.

Tower St East is a street in Jethimadh.
In Tower St East is a gas plant.

Tower St North is a street in Jethimadh.

Tower St South is a street in Jethimadh.

Tower St West is a street in Jethimadh.
In Tower St West is a swoonerfly.

Tuntsa Coze is a street in Jethimadh.
In Tuntsa Coze is a gas plant, a mortar barnacle, a heli kitty, a spice plant.

Uskela Passage is a street in Jethimadh.
In Uskela Passage is a mortar barnacle, a spice plant, a peat bog.

Volume - Jethimadh Tower Base

Jethimadh Tower Base is a region.

Book - Rooms

A Tower Room is a kind of Room.

Chapter - Setting

A staircase is scenery and a kind of door. A staircase is open and unopenable.
A kladder is a kind of staircase. The printed name is "ladder". Understand "ladder" as kladder.
Instead of climbing a staircase, try entering the noun.
Instead of going up in the presence of a staircase: try entering the noun.
Instead of going down in the presence of a staircase: try entering the noun.

A column is scenery and a kind of thing. The printed name is "column". The description is "It's a simple column. It holds the ceiling up. That's it. There is absolutely nothing hiding behind it." Understand "column" as a column.

Looking behind is an action applying to one visible thing.
Understand "look behind [something]" as looking behind.
Report looking behind: say "You find nothing unexpected behind [the noun]."

Chapter - Corridor One West

Corridor One West is a tower room in Jethimadh Tower Base.
Column One is a column in Corridor One West.

Instead of looking behind the column one for the first time:
say "You peer behind the column and find a ladder leading upwards.";
reveal C1Ladder.

Section - Doors

Door C1WtoC3E is a door. It is east of Corridor One West and northwest of Corridor Three East. The description is "The sign on the door reads[if the location is Corridor One West]'C3E'[otherwise]'C1W'[end if]."

Door C1WtoC1E is a door. It is west of Corridor One West and northeast of Corridor One East. The description is "The sign on the door reads[if 
the location is Corridor One West]'C1E'[otherwise]'C1W'[end if]."

Chapter - Corridor One East

Corridor One East is a tower room in Jethimadh Tower Base.

Section - Doors

[Door C1WtoC1E]

Door C1Eout is a door. It is west of Corridor One East. Through it is Tower St South. The description is "The sign on this door reads 'EXIT'."

Chapter - Corridor Two

Corridor Two is a tower room in Jethimadh Tower Base.

Section - Doors

Door C2toC1E is a door. It is west of Corridor Two. Through it is Corridor One East. The description is "The sign on the door reads 'C1E'."

Door C2toC3W is a door. It is east of Corridor Two and west of Corridor Three West. The description is "The sign on the door reads[if the location is Corridor Three West]'C2'[otherwise]'C3W'[end if]."

Door 4 is a yellow-purple triangle door. It is north of Corridor Two and south of Room 4. The description is "[if the location is Corridor Two]The sign on the door reads 'Room 4'[otherwise]This door leads back into the corridor[end if]."
[key is acquired automatically somehow.]

Chapter - Corridor Three West

Corridor Three West is a tower room in Jethimadh Tower Base.
Column Two is a column in Corridor Three West.
Green-White Circle Key is a hidden key in Corridor Three West.

Instead of looking behind column two:
say "You peer behind the column and find a ladder leading upwards. You also find a key.";
reveal C3Ladder;
reveal Green-White Circle Key.

Section - Doors

[Door C2toC3W]

Door C3WtoC3E is a door. It is east of Corridor Three West. Through it is Corridor Three East. The description is "The sign on the door reads 'C1W'."

Chapter - Corridor Three East

Corridor Three East is a tower room in Jethimadh Tower Base.

Section - Doors

[Door C1WtoC3E]

Door C3EtoC2 is a door. It is east of Corridor Three East. Through it is Corridor Two. The description is "The sign on the door reads 'C2'."

Door C3EtoC4 is a Green-White Circle door. It is north of Corridor Three East. Through it is Corridor Four. The description is "The sign on the door reads 'C4'."

Chapter - Corridor Four West

Corridor Four West is a tower room in Jethimadh Tower Base.

Section - Doors

Door 8 is a orange-blue square door. It is north of Corridor Four West. Through it is Room 8. The description is "The sign on the door reads 'Room 8'."

Door C4WtoVR is a door and scenery. It is south of Corridor Four West and north of Ventilation Room. The description is "The sign on the door reads [if the location is Corridor Four West]'Ventilation Room (EXIT)'[otherwise]'Way Out'[end if]."

Chapter - Corridor Four East

Corridor Four East is a tower room in Jethimadh Tower Base.

Section - Doors

Door C4EtoC6E is a door and scenery. It is east of Corridor Four East and northwest of Corridor Six East. The description is "The sign on the door reads[if the location is Corridor Four East]'C6E'[otherwise]'C4E'[end if]."

Door 15 is a teal-red hexagon door. It is north of Corridor Four East and south of Room 15. The description is "[if the location is Corridor Four East]The sign on the door reads 'Room 15'[otherwise]This door leads back into the corridor[end if]."

Chapter - Corridor Five

Corridor Five is a tower room in Jethimadh Tower Base.

Section - Doors

Door C5toC6W is a door. It is east of Corridor Five and west of Corridor Six East. The description is "The sign on the door reads[if the location is Corridor Five]'C6E'[otherwise]'C5'[end if]."

Door C5toC6E is a door. It is west of Corridor Five and east of Corridor Six West. The description is "The sign on the door reads[if the location is Corridor Five]'C6W'[otherwise]'C5'[end if]."

Door 23 is a red-green triangle door. It is north of Corridor Five and south of Room 23. The description is "[if the location is Corridor Five]The sign on the door reads 'Room 23'[otherwise]This door leads back into the corridor[end if]."

Chapter - Corridor Six West

Corridor Six West is a tower room in Jethimadh Tower Base.
Column Three is a column in Corridor Six West.
[Doors: "Ventilation Room (Exit)", "C5"]

Instead of looking behind column three for the first time:
say "You peer behind the column and find a ladder leading upwards.";
[reveal C71Ladder.]

Section - Doors

[Door C5toC6W]

Door C6WtoVR is a door and scenery. It is north of Corridor Six West and south of Ventilation Room. The description is "The sign on the door reads [if the location is Corridor Six West]'Ventilation Room (EXIT)'[otherwise]'Way Out'[end if]."

Chapter - Corridor Six East

Corridor Six East is a tower room in Jethimadh Tower Base.
Column four is a column in Corridor Six East.
In Corridor Six East is a hidden slow gin fizz. [accessed by jumping, ideally while "behind the column", but eh; maybe you see platforms here]

Instead of looking behind column four for the first time:
say "You peer behind the column and find a ladder leading upwards.";
[reveal C72Ladder.]

Section - Doors

[Door C4EtoC6E]
[Door C5toC6E]

Door 16 is a purple-orange circle door. It is north of Corridor Six East and south of Room 18. The description is "[if the location is Corridor Six East]The sign on the door reads 'Room 16'[otherwise]This door leads back into the corridor[end if]."

Chapter - Rooms

Room 4 is a tower room in Jethimadh Tower Base.
In Room 4 are Cosma-politan, Gurly Drink, Pungent Sunrise, Savory Smoothie, Too-Berry Shake, Slow Gin Fizz, and a crop garden.
[crop garden contains spinach. points for bringing seeds and a hoe and tending the patch to replace what is taken]

Room 8 is a tower room in Jethimadh Tower Base.
A Teal-Red Hexagon Key is in Room 8.

Door 8B is a door. It is north of Room 8. Through it is Corridor Four East. The description is "The signon the door reads 'This door leads back into the corridor'."

Room 15 is a tower room in Jethimadh Tower Base.
[something is hidden in Room 15.]	    [must jump, using spinach, in order to reach it] [Secret Five]
In Room 8 is a Purple-Orange Circle Key.

Room 23 is a tower room in Jethimadh Tower Base.
[must be at least level 12 to enter]
The Greeterbot Sentry is in Room 23.

The stairs is a staircase. It is plural-named. It is up from Room 23. Through it is Gwendolyns Chamber.

Room 16 is a tower room in Jethimadh Tower Base.
In Room 16 is a hidden Red-Green Triangle Key. [must jump, using spinach, in order to reach it]

Section - Ventilation Room

The ventilation room is a tower room in Jethimadh Tower Base.
"You are in a vertical shaft. There are exits at the bottom leading to corridors Four West and Six West, as well as an EXIT to Tower St South."

[Door C6WtoVR]
[Door C4WtoVR]

Door VRout is a door. It is east of Ventilation Room. Through it is Tower St South. The description is "The sign on this door reads 'EXIT'."

[TODO: Secret Room Nine is right around the C6W door]
[TODO: Secret Room Ten is to the left.]
[TODO: Secret Room Eleven is all the way at the very top of the room]

Book - Secret Locations

Secret Room One is a secret-room in Jethimadh Tower Base.
"You are in a dark space above Corridor One."
In Secret-Room One is a Orange-Blue Square Key.

C1Ladder is a hidden kladder. It is up from Corridor One West and down from Secret-Room One. [TODO: actually only partially hidden]

Secret-Room Two is a secret-room in Jethimadh Tower Base.
"You are in a secret pocket of space above Corridor Two."

C2Ladder is a kladder. It is up from Corridor Two and down from Secret-Room Two.

Secret-Room Three is a secret-room in Jethimadh Tower Base.
"You are in a hidden pocket of space to the left of Corridor Two."

C2Door is a hidden door. It is left of Corridor Two and right of Secret-Room Three.

Secret-Room Four is a secret-room in Jethimadh Tower Base.

C3Ladder is a hidden kladder. It is down from Corridor Three West and up from Secret-Room Four.

Secret Tunnel Six is a secret-room in Jethimadh Tower Base.
In Tunnel Room Six is a cloud 11 smoothie.

C5Door is a hidden door. It is left of Corridor Five and right of Secret Tunnel Six. [only accessible by jumping]
S6Door is a hidden door. It is right of Corridor Five and left of Secret Tunnel Six.

C71Ladder is a hidden door. It is down from Corridor Six West and up from Corridor Six East.
C72Ladder is a hidden door. It is down from Corridor Six East and up from Corridor Six West.

Volume - Vortex of Random 

Vortex of Random is a region.

Chapter - Streets

Aint That Dry is a street in Vortex of Random. The printed name is "Ain't That Dry".
In Aint That Dry is a dust trap.

Firebog Deeps is a street in Vortex of Random.
In Firebog Deeps are a peat bog, a jellisac growth.

Giant Kitchen is a street in Vortex of Random.

Giant Living Room is a street in Vortex of Random.

May Soup is a street in Vortex of Random.

Mental Space is a street in Vortex of Random.

Rook Cemetery is a street in Vortex of Random.
In Rook Cemetery are a dullite rock.

Savanna Sunset is a street in Vortex of Random.
In Savanna Sunset is a dust trap.

Double Rainbow is a street in Vortex of Random. "This street is cute-as-a-button, full of sparkles, lollipops and glee."
In Double Rainbow are a fruit tree, a sparkly rock, a beryl rock.

Winter Wingding is a street in Vortex of Random. [winter wonderland]

Val Holla is a street in Vortex of Random.

Volume - Shrines and Street Vendors
[
Table of Shrine and Vendors
street	shrine	vendor
]

Volume - Location Images

Figure PlayerStart is the file "PlayerStart.png".
The room illustration of PlayerStart is Figure PlayerStart.

Figure Progress Way is the file "Progress Way.png".
The room illustration of Progress Way is Figure Progress Way.

Figure Diversionary Path is the file "Diversionary Path.png".
The room illustration of Diversionary Path is Figure Diversionary Path.

Figure Doonboggle Trail is the file "Doonboggle Trail.png".
The room illustration of Doonboggle Trail is Figure Doonboggle Trail.

Figure Surveyors Stroll is the file "Surveyors Stroll.png".
The room illustration of Surveyors Stroll is Figure Surveyors Stroll.

Ur ends here.

