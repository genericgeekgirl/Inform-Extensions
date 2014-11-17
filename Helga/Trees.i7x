Trees by Helga begins here.

Use authorial modesty.

Volume - Light Green Thumb

Light Green Thumb is a scene.
Light Green Thumb begins when the location is May Soup for the first time.
Light Green Thumb ends when an allspice has been handled and a cherry has been handled and a bean has been handled and a plain bubble has been handled and an unseasoned egg has been handled and a general vapour has been handled.

When Light Green Thumb ends:
	record "Lift Your Light Green Thumb" as achieved;
	increase energy by 25;
	if sound-allowed is true, play sound of achievement in foreground;
	say "[as the parser]What’s that? I think you got a little green on your thumb![as normal]".

Volume - Watering

[sound: WATERING_CAN ??? possibly only on failure/breakage]

A watering-can is a kind of thing.

A watering can is a watering-can.
The description is "A stainless-steel 5-gallon watering can. It can be used to water plants, trees, and crops."

The irrigator 9000 is a watering-can.
The description is "Galvanised for your pleasure, the Irrigator 9000 offers unparalleled waterability for the constant gardener."

Watering is an action applying to one thing.
Understand "water [something]" as watering.

Check watering something:
	if the noun is not a tree:
		say "Now [the noun] is soaking wet."

Check watering something (this is the needs a watering can rule):
	if the player does not enclose a watering-can:
		say "That's going to be tough without a watering can." instead.

Check watering a tree (called T):
	if T is not thirsty:
		say "[The T] says, 'I don't want to be watered right now.'" instead.

Carry out watering a tree (called T):
	say "[one of][The T] says, 'Oh, that hit the spot.'[paragraph break][as the parser]Trees can also be petted. Everything needs a little love.[as normal][or]You watered [a T].[paragraph break][The T] says '[water response of T]'[line break][stopping]".

After watering a tree (called T):
	now T is not thirsty;
	decrease the player's energy by 5;
	try T increasing health.

Volume - Petting

[sound: PET_TRANT]

Check touching a tree (called T):
	if T is not lonely:
		say "[The T] says, 'I don't want to be petted right now.'" instead.

Carry out touching a tree (called T):
	say "[one of][The T] says, 'Mmm, thanks for that. Do you want some [printed plural name of random trant_fruit that is part of T]? You can harvest them from me. They're quite yummy, even if I do say so myself.'[or]You pet [a T].[paragraph break][The T] says '[pet response of T]'[line break][stopping]".

After touching a tree (called T):
	now T is not lonely;
	decrease the player's energy by 2;
	try T increasing health.
	
Volume - Harvesting

Harvesting is an action applying to one thing.
Understand "harvest [something]" as harvesting.

Check harvesting a trant_fruit (called F):
	if F is part of a tree (called T):
		try harvesting T instead.

Every turn:
	repeat with T running through the list of trees in the location:
		if T is not lonely and T is not thirsty:
			now the fruit count of T is 3.

Check harvesting something (this is the can only harvest trees rule):
	if the noun is not a tree and the noun is not a trant_fruit:
		say "I don't know what you mean by that." instead.

Check harvesting a tree (called T) (this is the nothing to pick rule):
	if the fruit count of T is 0, say "There's nothing to pick, cowboy." instead.

Carry out harvesting a tree (called T):
	say "You harvested [a T] and received [fruit count of T] [printed plural name of random trant_fruit that is part of T].[paragraph break][The T] says '[harvest response of T]'[line break]"

After harvesting a tree (called T):
	while fruit count of T > 0:
		let F be a random trant_fruit that is part of T;
		let the new fruit be a new object cloned from F;
		now the player carries the new fruit;
		decrease fruit count of T by 1;
	now T is lonely;
	now T is thirsty;
	decrease the player's energy by 5.

[sound: BEEN_TREE, BUBBLE_TREE, EGG_TREE, FRUIT_TREE, GAS_TREE, SPICE_TREE, default is HARVEST]

Volume - Trees

A tree is a kind of thing. A tree is fixed in place.

A light tree is a kind of tree.
A cave tree is a kind of tree.

A tree can be thirsty. A tree is usually thirsty.
A tree can be lonely. A tree is usually lonely.
A tree can be dead. A tree is usually not dead.

A tree has a number called fruit count. Fruit count is usually 0.

A tree has a text called pet response.
A tree has a text called water response.
A tree has a text called harvest response.

After examining a tree for the first time:
say "[as the parser]Regular watering and petting keeps trees happy and healthy.[as normal][line break]The fruit tree says, 'Cough, cough. My, but I am thirsty. If you could water me, I would be very grateful.'"

Chapter - Health & Maturity (TODO)
        
[maturity is time-based, assuming proper care]                                              
[water + pet increases health]

[trees can be rooked or poisoned, in which case they cannot be harvested, petted or watered]

Increasing health is an action applying to nothing.

Carry out a tree (called T) increasing health:
	if T is not lonely and T is not thirsty:
		if health of T < 10, increase the health of T by 5.
[		now T is lonely;
		now T is thirsty.
]

Increasing maturity is an action applying to nothing.

Carry out tree (called T) increasing maturity:
	if maturity of T < 10, increase the maturity of T by 1.

A tree has a number called health. Health is usually 7. [Max 10]
A tree has a number called maturity. Maturity is usually 7. [Max 10]
A tree has a number called fruit capacity. Fruit capacity is usually 0.
        
Book - Fruit Tree

A fruit tree is a kind of light tree.
The description is "The glorious Fruit Tree. Thick with tasty cherries ripe to be converted into other delicious fruits, these venerable plants may not be chatty, but they're indispensable for fine edibles and quaffables of all sorts."

The harvest response of a fruit tree is "[one of]Yup.[or]Mhm.[or]Frooo?[or]Wannit?[at random]".

The pet response of a fruit tree is "[one of]Hm...[or]Rrrr...[or]Aw...[or]Mhm...[or]Woo![at random]".

The water response of a fruit tree is "[one of]Sluuuurp.[or]Glug-glug.[or]Mmm.[or]Splosh.[or]Psahhh.[at random]".

Book - Spice Plants

A spice plant is a kind of light tree.
The description is "The delectable Spice Plant. Seductively dangling with Allspice, the millability of this simple brown seed means that everyone's favorite varietal of spice can be found bounded in one shell if you look hard enough."

The harvest response of spice plant is "[one of]Ooooo! Easy there, little grabbyhands...[or]Careful what you're yanking, little friend.[or]Well now. It's a little spice you're after, is it?[or]My... you're a little handsy. Have we been introduced?[or]Oooh! I say! Goosed by a Glitch.[at random]".

The pet response of spice plant is "[one of]Eh? What? How nice...[or]My, my: such soft hands.[or]Oh my! This is unexpectedly satisfying...[or]Well I never...[or]Nice job, kid, but could be spicer. Know whaddai mean?[at random]".

The water response of spice plant is "[one of]Now now, young'un, not too much water...[or]I'd prefer a fine scotch, but if water is all you have...[or]Petting? Watering? My my, we ARE attentive.[or]Such a delicate pour you have, my sweet.[or]You could pour slurry from a bucket and make it refreshing...[at random]".

Book - Bean Tree

A bean tree is a kind of light tree.

The description of the Bean Tree is "The good old Tree of Bean. Laden with 57 varieties of identical-looking legume, these protein-machines provide the raw ingredients for hearty chow and base material for new trees."

The harvest response of bean tree is "[one of]Is that what you've bean looking for?[or]Cool. Beans. Cool beans![or]Two bean, or not two bean?...[or]You favored us. Now, we fava you. Ha ha. Like \[or]Wassssss-sap! Ha ha ha. Oh just take bean then.[at random]".

The pet response of bean tree is "[one of]Ahh. We have been pining for a hug. Ha ha.[or]Fir the record: this petting is improving.[or]You've spruced yourself up since I saw you. Ha. Spruce.[or]Nice hug, bud.[or]Ahhhhhh, sap's what I'm talkin' about.[at random]".

The water response of bean tree is "[one of]Nice watering action, bud.[or]Your act is like cool glass of water on a.... oh it IS that. Ha. Ha ha.[or]Little Glitch has improved.[or]You're getting better at this. Ever thought of branching out?[or]Tree is lichen that.[at random]".

Book - Bubble Tree

A bubble tree is a kind of light tree.
The description of the Bubble Tree is "The delicate Bubble Tree. Bursting with plain bubbles waiting to be tuned, these somewhat unstable specimens harbor fruit of perfect transparency - and thoughts of bizarre conspiracy."

The harvest response of bubble tree is "[one of]Hey! Pssst. You like bubbles? Here.[or]What? Bubbles? Mine? Why? Well, ok...[or]...Fine. Take them. Don't let it get back to The Man...[or]Here! But shh... Don't tell anyone they're from me.[or]Bubbles! Now move along before anyone sees you.[at random]".

The pet response of bubble tree is "[one of]Who told you where I was? Did they? Oh, well. Thanks, I...[or]...fizzing so loud the mountain popped! Pop![or]...and if you think loud enough, they might hear...[or]Quick! Get the tin! My hole has a hat! No! Hat has hole![or]Shhhh, if you see him, don't tell him I'm here.[at random]".

The water response of bubble tree is "[one of]Say, I don't remember ordering drinks, who sent you?[or]...Did one of Grendaline's send you? Why I oughta...[or]...to the top of my tallest bubble, I swear it, until...[or]You ever get the feeling you're bein' tapped, kid?[or]...even the slightest sniff of a... wait! Who are you?![at random]".

Book - Paper Tree

A paper tree is a kind of tree.
The description of the Paper Tree is "Turns out that paper DOES grow on trees, as long as the tree in question is this one. The sheety fruit of this practical tree is a prerequisite for all manner of Penpersonship skills."

The water response of paper tree is "[one of]That one watering[line break]Can... have such stunning effect?[line break]Hail, tiny raincloud.[or]Even a trickle[line break]From the right kind of can[line break]Brings life to paper.[or]Careful where you aim.[line break]I don't want to turn into[line break]Papier-mâché.[or]Ahh, this welcome rain. [line break]It falls upon my branches. [line break]And makes me go \[or]It's very nice, thanks [line break]That you have taken the time. [line break]To sprinkle on me.[or]You made my roots wet. [line break]It's not that I'm complaining [line break]I'm just a bit damp.[or]All this way you came. [line break]To seek me out and sprinkle. [line break]I think that you're nice.[or]Watering paper?[line break]Nice, thanks, but watch out there or[line break]You'll make me soggy.[or]It's enjoyable,[line break]But watch I don't turn into[line break]Papier Mache.[at random]".

The pet response of paper tree is "[one of]Hugging trees tightly[line break]a trickle of energy[line break]yes, I like that. thanks[or]Your action suggests[line break]you haven't been at this long[line break]but you're still not bad.[or]I am Paper Tree[line break]I think I might be useful[line break]But for what? No clue.[or]Paper trees are good[line break]at making crinkling noises[line break]when you hug their trunks.[or]I am paper tree[line break]I like it when you hug me hard[line break]but so soon you leave.[or]This petting pleases.[line break]Are you a tree whisperer?[line break](If that is a thing...)[or]This kind attention[line break]Helps paper tree to grow big[line break]We hope you feel proud.[or]Such polished petting! [line break]That you took the time for this [line break]Makes Paper Tree smile.[or]I like your petting [line break]You know how to please a tree. [line break]Not in a weird way.[or]Didn't see you there[line break]With your soft and kindly hands. [line break]You can stop now, though.[at random]".

The harvest response of paper tree is "[one of]Take these sheets away.[line break]Do with them as you want to.[line break]I cannot use them.[or]You want some paper? [line break]Take it then, it's yours to use.[line break]Just don't waste it. Thanks.[or]Giving you paper. [line break]I hope that's what you wanted. [line break]It's all you're getting.[or]Only a few pieces [line break]of paper, I will give you. [line break]You expected more?[or]Here you are: paper![line break]You harvest a paper tree... [line break]What do you expect?[or]Covered in white stuff. [line break]I look like I've been TPed [line break]But no, it's my fruit.[or]Your perfect harvest. [line break]Each branch shaken, and at last...[line break]A few clean leaves fall.[or]My leaves bow to you[line break]My branches offer bounty[line break]And now a leaf falls.[or]You stretch to harvest [line break]Pinching, pulling until paf! [line break]A single leaf falls.[or]Listen, here's a secret:[line break]These aren't just leaves, they're paper![line break]For writing and stuff.[or]Here, kid, is paper[line break]Used for reading, writing, planes, or[line break]Decorating walls.[at random]".

Book - Egg Plants

An egg plant is a kind of cave tree.
The description of the Egg Plant is "The noble Egg Plant. As is fitting to a fruit as ovoidly perfect as a prolate moon, Egg Plants (of course) can only be found underground in cool, dark places."

The harvest response of egg plant is "[one of]This. For you.[or]We grew this. You take.[or]This harvest good. Have it.[or]Ooooof. Take harvest. Heavy.[or]We made this. You can have.[at random]".

The pet response of egg plant is "[one of]We feel mighty and bountiful after good petting.[or]Petting is preferent behaviour. We endorse.[or]Gratitude for your niceyness.[or]Such bespoke petting expands egg plant brain. Grazie.[or]Such magnanimousity astonds us. Nice Glitch.[at random]".

The water response of egg plant is "[one of]Excellent we needed that.[or]Little Glitch is becoming agronomist! Is that a word?[or]We lack superlatives for this watering. Hm: 'nicewet'?[or]Ahh, we fear we will be forgotten, down here, in the dark.[or]This watering exceeds expectation. Excellent.[at random]".

Book - Gas Plants

A gas plant is a kind of light tree.
The description of the Gas Plant is "The ever-mellow Gas Plant. Packed with a stash of General Vapour that's just begging to be gassified. With a love of the murky and mystical, Gas Plants can often be found in totally far out spaces."

The harvest response of gas plant is "[one of]You want gas? Dude, sure.[or]Always happy to share, friend.[or]Yeah, harvest away. Gas is a social thing, friend.[or]Gas? For you? Yeah, man.[or]You sure that's enough? Come back for a re-up anytime.[at random]".

The pet response of gas plant is "[one of]Groovy. Yes. Hang loose, kid.[or]Ahhhh. In the zone now, friend. Yeah.[or]When we touch, I feel like our energies meld. You get that? No?[or]Ah yes. Mellow now.[or]As ever, it's been a gas.[at random]".

The water response of gas plant is "[one of]You're quenching the thirst of the cosmos, y'hear?[or]Dibs on your next full watercan, friend. This stuff is good.[or]Feels real groovy, friend.[or]Ahh, falling water, it sounds like music, don't you think?[or]Water's just so awesome. So awesome.[at random]".

Volume - Tree Resources

A trant_fruit is a kind of food. A trant_fruit can be edible. A trant_fruit is usually edible.

Before doing anything except taking to a trant_fruit (called F):
	if F is part of a tree:
		say "You can't see any such thing." instead.

Before taking a trant_fruit (called F):
	if F is part of a tree (called T):
		try harvesting T instead.

Book - Fruits

A fruit is a kind of trant_fruit.

Chapter - Cherry

A cherry is a kind of fruit. The plural of cherry is cherries.
The description is "A basic cherry, freshly picked from a Fruit Tree.[first time][paragraph break][as the parser]A cherry can be changed into other kinds of fruits, but that is beyond the scope of this demo.[as normal][only]".

One cherry is part of every fruit tree.

Chapter - Changing (TODO)

A fruit changing machine is a thing.
The description is "A triple-carbine fruit-changing machine. It will transmogrify cherries into other fruit. This can come in surprisingly handy."

Chapter - Apple

An apple is a kind of fruit. The description is "A boldly red and brazenly juicy apple."

After eating an apple:
	say "An apple a day keeps the plague doctor away.".

Instead of tasting an apple:
	say "You licked an Apple. Mmmm, 'Appley'!".

Chapter - Banana
        
A banana is a kind of fruit. The description is "A bright yellow, potassium-rich banana."

After touching a banana (called B):
	let N be a random number between 1 and 3;
	if N is 1:
		say "Oops, you squashed it! You can't just go to town on a Banana like that; you have to be delicate.";
		remove B from play;
	otherwise:
		say "Feels so smooth.";
		increase the player's mood by 5.

Chapter - More Fruits

A bunch of grapes is a kind of fruit. The description is "A heaping handful of red grapes." The plural of bunch of grapes is bunches of grapes.

A lemon is a kind of fruit. The description is "One half of a nice pair of lemons."

A mangosteen is a kind of fruit. The description is "A sweet and tangy mangosteen."

A pineapple is a kind of fruit. The description is "An exceptionally prickly pineapple."

A cloudberry is a kind of fruit. The description is "A pleasingly tart cloudberry." The plural of cloudberry is cloudberries.

A whortleberry is a kind of fruit. The description is "A single delectable whortleberry." The plural of whortleberry is whortleberries.

An orange fruit is a kind of fruit. The printed name is "orange". The description is "A very orange orange."

A plum is a kind of fruit. The description is "A plummy plum."

A strawberry is a kind of fruit. The description is "A luscious red strawberry." The plural of strawberry is strawberries.

Book - Spices

A spice is a kind of trant_fruit.

Chapter - Allspice

An allspice is a kind of spice. The plural of allspice is allspice.
The description is "Some basic spice, freshly harvested from a Spice Plant."

One allspice is part of every spice plant.

Understand "consider [something]" as requesting actions for.

After requesting actions for allspice the first time:
	say "Allspice may be the most basic of spices, but it deserves some consideration, too. Together you share a moment of mutual contemplation.";
	increase score by 2;
	decrease the player's energy by 5;
	mark "allspice" as examined.
        
Chapter - Grinding (TODO)

A spice mill is a thing.
The description is "A basic spice mill for converting basic allspice into other more exciting spices."

Chapter - Black Pepper

A black pepper is a kind of spice.
The description is "A mound of extra-sneezy black pepper."

Instead of smelling the black pepper:
	say "You launch into a sneezing fit. You were expecting something different?";
	decrease player's energy by 2;
        mark "black pepper" as examined.
        
Chapter - Camphor

A camphor is a kind of spice.
The description is "A small pile of bitter camphor."

After requesting actions for camphor the first time:
	say "Camphor is bitter, but knowledge is sweet. Slightly sticky, too.";
	decrease player's energy by 2;
	decrease player's mood by 2;
        mark "camphor" as examined.
                
Chapter - Cardamom

A cardamom is a kind of spice.

The description is "A generous pinch of zesty cardamom. A little goes a long way."

After examining the cardamom for the second time:
	say "You observe the cardamom closely for several minutes. Not surprisingly, it does nothing.";
	mark "cardamom" as examined.
        
['watch' is a synonym for examine]

Chapter - Cinnamon

A cinnamon is a kind of spice.
The description is "About a spoonful of versatile cinnamon."

Pinching is an action applying to one thing.
Understand "pinch [something]" as pinching.

Carry out pinching something:
	try attacking the noun.

Instead of pinching the cinnamon: 
	say "You've always wondered what recipes mean when they ask for 'a pinch of cinnamon.' Now you know.";
	decrease player's energy by 3;
	mark "cinnamon" as examined.
        
Chapter - Cumin

A cumin is a kind of spice.
The description is "A heap of pleasantly aromatic cumin."

Instead of tasting the cumin:
	say "Powdery cumin coats your tongue. It's not unpleasant, but it's not exactly pleasant, either.";
	increase score by 2;
	mark "cumin" as examined.

Chapter - Curry

A curry is a kind of spice. The plural of curry is curries.
The description is "A top-secret blend of curry powder."

After examining the curry for the second time:
	say "Yep, that's curry all right.";
	increase player's mood by 1;
	decrease player's energy by 1;
	mark "curry" as examined.

Understand the command "scrutinize" as "examine".

Chapter - Garlic

A garlic is a kind of spice.
The description is "A nice stinky garlic."

After eating garlic:
	say "Your breath is icky.";
	the taste of garlic fades in ten turns from now;
	the power of garlic lives on in five turns from now;
        mark "garlic" as examined.

At the time when the taste of garlic fades:
	say "You no longer have the taste of garlic in your mouth.";
	increase player's mood by 15.

At the time when the power of garlic lives on:
	say "The power of garlic lives on in your mouth."

Chapter - Ginger

A ginger is a kind of spice.
The description is "A nubbin of pungent ginger."

Instead of smelling the ginger:
	say "Ah, sweetly aromatic ginger. Tickly to the nose, soothing to the senses.";
	decrease player's energy by 3;
	increase player's mood by 2;
	mark "ginger" as examined.
        
Chapter - Hot Pepper

A hot pepper is a kind of spice.
The description is "A scoop of potentially combustible hot pepper."

Blowing on is an action applying to one thing.
Understand "blow on [something]" as blowing on.
Carry out blowing on: say "I’m sorry. I don’t know what you mean by that."

Instead of blowing on a hot pepper:
	say "A cloud of hot pepper rises in the air. Your eyes! Your eyes!";
	decrease player's mood by 5;
	mark "hot pepper" as examined.
        
Chapter - Licorice

A licorice is a kind of spice.
The description is "A nub of chewy licorice."

Before eating a licorice:
	decrease player's energy by 3; 
	increase player's mood by 5;

After eating a licorice:
	say "So... very... chewy. You're going to be picking licorice out of your teeth for days.";

Understand "flatter [something]" as complimenting.

Instead of complimenting a licorice:
	say "The licorice seems stalwartly immune to your charms. Or is it?";
	decrease player's energy by 1;
	mark "licorice" as examined.

Chapter - Mustard

A mustard is a kind of spice.
The description is "A dash of tangy mustard."

Plastering is an action applying to one thing.
Understand "plaster [something]" as plastering.
Carry out plastering: say "I’m sorry. I don’t know what you mean by that."

Instead of plastering the mustard: 
	say "Ah, a good old-fashioned mustard plaster. It's good for what ails you.";
	decrease player's mood by 4;
	increase player's energy by 10;
	mark "mustard" as examined.
        
Chapter - Nutmeg

A nutmeg is a kind of spice.
The description is "A sweet-smelling nutmeg seed."

Instead of rubbing or touching the nutmeg: 
	say "You polish the nutmeg to a shiny gloss. This is strangely rewarding.";
	increase player's mood by 3;
	decrease player's energy by 5;
	mark "nutmeg" as examined.
        
Chapter - Old(er) Spice

An older spice is a kind of spice. The printed name is "old(er) spice". Understand "old(er) spice" and "old(er)" as older spice.
The description is "A handful of colorful older spice."

After examining an older spice for the second time:
	say "This colorful handful of old(er) spice almost reminds you of something. Now if only you could remember what it is.";
	decrease player's energy by 5;
	we remember in 10 turns from now;
	mark "older spice" as examined.
        
At the time when we remember:
	say "Oh, now you remember what old(er) spice reminds you of.";
	increase player's mood by 5.

Chapter - Pinch of Salt

A pinch of salt is a kind of spice. The plural of pinch of salt is pinches of salt.
The description is "A tiny pinch of very salty salt."

Chapter - Saffron

A saffron is a kind of spice.
The description is "Some tendrils of bitter saffron."

Loving is an action applying to one thing.
Understand "love [something]" as loving.
Instead of loving something: try touching the noun.

Instead of loving the saffron:
	say "Awww. The saffron loves you back.";
	decrease player's energy by 2;
	increase player's mood by 2;
	mark "saffron" as examined.
        
Chapter - Turmeric

A turmeric is a kind of spice.
The description is "Some uncommonly orange turmeric."

Instead of touching the turmeric:
	say "Feels real turmericky, for sure.";
	decrease player's energy by 2;
	increase player's mood by 2;
	mark "turmeric" as examined.

Chapter - Spice Examiner

Table of Spices Examined
spice	stamp
"black pepper"	-1
"camphor"	-1
"cardamom"	-1
"cinnamon"	-1
"cumin"	-1
"curry"	-1
"garlic"	-1
"ginger"	-1
"hot pepper"	-1
"licorice"	-1
"mustard"	-1
"nutmeg"	-1
"saffron"	-1
"turmeric"	-1
"allspice"	-1
"older spice"	-1

spices examined is a number that varies. spices examined is 0.

Every turn:
	if spices examined is the number of rows in the Table of Spices Examined:
		record "Carefully scrutinized every spice in existence" as achieved;
		now spices examined is 0.

To mark (S - text) as examined:
	choose row with a spice of S in the Table of Spices Examined;
	if stamp entry is less than 0:
		now the stamp entry is the turn count;
		increase spices examined by 1.
        
Book - Beans

A bean is a kind of trant_fruit.
The description is "A bean. It can be used for cooking, or it can be seasoned to turn it into seeds for different trees and plants."

One bean is part of every bean tree.

Chapter - Seasoning (TODO)

A bean seasoner is a thing.
The description is "A Bean Seasoner seasons beans. You probably guessed that already."

Chapter - Seasoned Beans

A seasoned-bean is a kind of thing.

Book - Bean Tree Bean

A bean tree bean is a kind of seasoned-bean.
The description is "A plain, non-magical bean tree bean. It can grow even more beans!"

One bean tree is part of every bean tree bean.

Book - Bubble Tree Bean

A bubble tree bean is a kind of seasoned-bean.
The description is "A fizzy bubble tree bean. It can be planted to grow a bubble tree."

One bubble tree is part of every bubble tree bean.

Book - Egg Plant Bean

An egg plant bean is a kind of seasoned-bean.
The description is "A smooth, round egg plant bean. It can grow egg plants. Then the fun really starts!"

One egg plant is part of every egg plant bean.

Book - Fruit Tree Bean

A fruit tree bean is a kind of seasoned-bean.
The description is "An ordinary fruit tree bean. It can be used to grow a fruit tree."

One fruit tree is part of every fruit tree bean.

Book - Gas Plant Bean

A gas plant bean is a kind of seasoned-bean.
The description is "A vapourous gas plant bean. It can be used to grow a gas plant."

One gas plant is part of every gas plant bean.

Book - Spice Plant Bean

A spice plant bean is a kind of seasoned-bean.
The description is "A small spicy bean. It can be used to plant a spice plant."

One spice plant is part of every spice plant bean.

[
"Find a suitable patch to plant it in!"
"That patch already has something growing."
"That patch has been dug. Your poor bean would get lost in there!"
"That patch needs tending."
"You planted that bean real good. Congrats!"
]

Book - Bubbles

A bubble is a kind of trant_fruit.

Understand the command "pop" as "attack".

Instead of attacking a bubble (called B):
	say "You popped [a B]";
	remove B from play.

Chapter - Plain Bubble

A plain bubble is a kind of bubble.
The description is "A common, ordinary, plain bubble harvested from a Bubble Tree."

One plain bubble is part of every bubble tree.

Chapter - Tuning (TODO)

A bubble tuner is a thing.
The description is "A Bubble Tuner somehow converts plain bubbles into not-plain bubbles. How? Nobody knows."

Chapter - Blue Bubble

A blue bubble is a kind of bubble.
The description is "A big blue bubble."

Chapter - Hard Bubble

A hard bubble is a kind of bubble.
The description is "A deceptively hard bubble."

Bubble_popped is a number that varies. Bubble_popped is 0.

To say pop-hard-bubble: say "You popped a hard bubble[one of]. Interesting. These bubbles are hard to pop, but you definitely seemed to learn a thing or two[or]. Popping bubbles is fun, but you've already learned all you can from it[stopping]."

Instead of attacking a hard bubble (called B):
	say "[pop-hard-bubble]";
	remove B from play;
	if bubble_popped is 0:
		decrease player's energy by 1;
		increase score by 24;
	otherwise:
		decrease player's energy by 5;
		increase player's mood by 5.

Chapter - Tiny Bubble

A tiny bubble is a kind of bubble.
The description is "An eeny-weeny, fizzy-wizzy tiny bubble."

Book - Paper

A sheet of paper is a kind of trant_fruit.
The description is "A blank piece of paper."
The plural of sheet of paper is sheets of paper.

One sheet of paper is part of every paper tree.

A sheet of paper is not edible.

Chapter - Writing (TODO)

A quill is a kind of thing. 
The description is "This fancy quill will let you write messages and notes. And maybe give yourself inky fingers."

Chapter - Folding (TODO)

Book - Eggs

A unseasoned egg is a kind of trant_fruit. The printed name is "egg".
The description is "A plain, unseasoned egg, newly harvested from an Egg Plant. It can be used for all kinds of cooking, or it can be hatched into different animals."

One unseasoned egg is part of every egg plant.

Nogging is an action applying to one thing.
Understand "nog [something]" as nogging.
Carry out nogging: say "I am uncertain how to do that."

Instead of nogging a unseasoned egg (called E):
say "You nogged an egg. It was a creamy, but ultimately unsatisfying experience.";
remove the E from play.

Chapter - Seasoning (TODO)

An egg seasoner is a thing.
The description is "An Egg Seasoner is an important tool for seasoning and incubating eggs that hatch into all kinds of exciting animals."

Chapter - Seasoned Eggs (Covered in Animals.i7x)

Book - Gasses

A gas is a kind of trant_fruit.

A gas is not edible.

Chapter - General Vapour

A general vapour is a kind of gas. Understand "general vapor" and "vapor" as general vapour.
The description is "A flask of all-purpose general vapour, harvested from a Gas Plant."

One general vapour is part of every gas plant.

Instead of shaking general vapour:
	say "What?!? Didn't your mother ever warn you not to shake your gases? You're lucky general vapour isn't volatile."

Chapter - Gassify (TODO)

A gassifier is a thing.
The description is "An ergonomically correct gassifier. It can turn general vapour into much more exciting gases."

Chapter - Crying Gas

A crying gas is a kind of gas.
The description is "A flask of crying gas, saltily infused with real tears."

After smelling a crying gas:
	say "You sniffed a Crying Gas. Just a tiny sniff of crying gas makes you sniffle. *sniff*";
	decrease player's mood by 2.

Chapter - Heavy Gas

A heavy gas is a kind of gas.
The description is "A hefty flask of heavy gas. Remember to lift with your legs."

Instead of pulling a heavy gas:
	say "You lifted a Heavy Gas. Ooch! You forgot to lift with your legs. You're going to hurt in the morning. Actually, you hurt already.";
	decrease player's energy by 3;
	decrease player's mood by 3.

Chapter - Helium

A helium is a kind of gas.
The description is "One vial of premium colorless, odorless, tasteless helium. You know, the stuff that makes you sound funny."

Chapter - Laughing Gas

A laughing gas is a kind of gas.
The description is "One carefully corked container of gigglicious laughing gas."

Understand the commands "remove cork" and "uncork" as "open".

Instead of opening a laughing gas:
	say "You uncorked a Laughing Gas. The tiniest whiff of laughing gas escapes the vial, causing you to smirk uncontrollably before you wisely re-cork it.";
	increase player's mood by 2;
	decrease player's energy by 2.

Chapter - White Gas

A white gas is a kind of gas.
The description is "A vial of pristine white gas."

Instead of attacking a white gas (called G):
	say "You smashed a White Gas. Oh, dear. You probably shouldn't have smashed that. White gas can be extremely useful. Live and learn, right?";
	decrease player's mood by 2;
	decrease player's energy by 2;
	remove G from play.

Volume - Dead Trees

Book - Clearing Dead Trees

[Clear => Push or Pull; Remove => as in clothing]

Instead of pulling a tree: try pushing the noun.
Before taking off a tree: try pushing the noun instead.
        
Instead of pushing a tree (called T):
	if T is not dead:
		say "Only dead trees can be cleared in this manner.";
		stop the action;
	if the player does not enclose an axe:
		say "You need a hatchet to do that.";
		stop the action;
	say "[The T] says, '[clear response of T]'.";
	let P be a random patch that is part of T;
	now P is in the location;
	repeat with wood running through planks that are part of T:
		now the player carries wood;
	remove T from play;


Section - Planks

A plank is a kind of thing.
The description is "A plain wooden plank with many uses."

Three planks are part of every tree.

Section - Axes

An axe is a kind of thing.

A hatchet is an axe.
The description is "A slightly dull hatchet, useful for both dead tree-clearing and showy beard-shaving."

A class axe is an axe.
The description is "Vibrating with raw power far beyond the realm of the basic Hatchet, the Class Axe is perfect for wielding by anyone who really loves to whack their wood."

Section - Clear Responses

A tree has a text called clear response.

The clear response of a bean tree is "[one of]Bean there - done now. A ha ha h...[or]Toodle pip, old Bean, eh? Heh heh *croak*...[or]Die, my dear? Why, that's the last thing I'll d...[or]Phew. I'm so tired of being the funniest person in the yard...[or]Dying is easy. Comedy is hard.[at random]".

The clear response of a bubble tree is "[one of]I have not told half of what I saw...[or]I knew they'd get me in the end.[or]Sigh. I'm so bored with it all, anyw...[or]Don't disturb my circles![or]The struggle will continue! Onward, comr...[at random]".

The clear response of an egg plant is "[one of]Egg tu, Brute? Egg TU?[or]Meh. Last words are for fools who haven't said enough.[or]Bah! You couldn't hit an elephant at this dist...[or]Ah. La petit mort. Au revoir, mon cherie.[or]Acta est fabula, plaudite![at random]".

The clear response of a fruit tree is "[one of]URK![or]Wait, I've just thought of someth....[or]ARRRRGGGGHHHH...[or]BUUUUURP. Excuse m...[or]Ngngngngngng-ftang.[at random]".

The clear response of a gas plant is "[one of]Ahhh: beautiful day. Beautiful.[or]Why not? Yeah.[or]Yeah... better to burn out than fade away...[or]Such a beautiful day to die, man.[or]It's been a gas, friend. See you in the ne...[at random]".

The clear response of a spice plant is "[one of]Nonsense! I've never felt bett...eugh.[or]Well, I've had a happy life. Also, spicy![or]Drink to me!...[or]I never should have switched from scotch to martinis...[or]Oh you young people act like old men. You have no fun...[at random]".

Volume - Soil Appreciation

Soil Appreciation is a scene.

When Soil Appreciation ends:
	record "Talking 'bout Soil Appreciation" as achieved;
	if sound-allowed is true, play sound of achievement in foreground;
	say "[as the parser]You're on your way now, digster![as normal]".

Volume - Patches

A patch is a kind of thing. A patch is fixed in place.

A patch can be dug. A patch is usually not dug.
A patch can be tended. A patch is usually not tended.

A basic patch is a kind of patch. The printed name is "patch".
The description is "A humble, weedy patch. With a spade you can dig it, a hoe you can tend it, and, with a bean, even grow a tree in it. (NB: Trees are delicate organisms, and beans will only consent to being planted in the correct region.)"
The plural of basic patch is patches.

One basic patch is part of every light tree.

An underground patch is a kind of patch. The printed name is "dark patch".
The description is "An underground patch. As in 'subterranean', rather than 'clandestine'. Perfect for planting anything that flourishes in the shade. Or rather 'the one thing that flourishes in the shade'."
The plural of underground patch is dark patches.

One underground patch is part of every cave tree.

Book - Digging (TODO)
 
To say patch_dig: say "[one of]Is dugged! Here! Urths![or]O looks! You dugged me. An' I mades this.[or]O what is this you did dug? It done be stuff, yeah?[or]I is pull this out of that hole you dugged.[or]Please be patient. I am newthing. Thanky for digs![or]Look! Urths and stuffs! Dugged it you did![at random]".

A shovel is a kind of thing.

A basic shovel is a shovel. The printed name is "shovel".
The description is "An essential for anyone that calls a spade a shovel, this simple tool masterpiece can be used to harvest Peat, dig for dirt (well, Urth), and occasionally land a juicy piece of Loam."

An ace of spades is a shovel.
The description is "Finely honed from old metal, the Ace of Spades is made for the heavy digger."

Book - Tending (TODO)

To say patch_tend: say "[one of]So fresh! So clean! So ready for a bean! OMG that rhymes![or]Ah, cleansed. Now plant me up, I say, PLANT ME UP![or]Much better. And much better for gardening, non?[or]Nice and tidy. And superfertile. Got any beans?[or]Great. Now: tended patches need beans. You dig?[at random]".

A hoe is a kind of thing.

A basic hoe is a hoe. The printed name is "hoe".
The description is "A garden-variety hoe. It can be used to tend weedy patches."

A high class hoe is a hoe. The printed name is "high-class hoe". Understand "high-class" and "high-class hoe" as high class hoe.
The description is "More refined than your average hoe, the High-Class Hoe is a hoe you'll be proud to be seen with."

Book - Planting (TODO)

[A seasoned bean can be planted in a patch.]

[Egg plants can only grow in dark patches; Only egg plants can grow in dark patches.]

A seedling is a kind of tree.
                
Trees ends here.
