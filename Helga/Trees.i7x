Trees by Helga begins here.

Use authorial modesty.

Volume - Light Green Thumb

Light Green Thumb is a scene.
Light Green Thumb begins when the location is Namaste for the first time.
LGT Steps is a number that varies. LGT Steps is 0.
Light Green Thumb ends when LGT Steps is 2.

[TODO: scoring]
When Light Green Thumb ends:
record "Completed Light Green Thumb" as achieved;
increase energy by 25;
if sound-allowed is 1, play sound of achievement in foreground;
say "[as the parser]You have gained the Light Green Thumb skill![as normal]".

A tree is a kind of thing.
A tree is fixed in place.

A tree can be finished. A tree is usually not finished.
A tree can be thirsty. A tree is usually thirsty.
A tree can be lonely. A tree is usually lonely.

[harvest is always 3 of whatever]

A tree has a number called health. Health is usually 7. [Max 10]
A tree has a number called maturity. Maturity is usually 7. [Max 10]
A tree has a number called fruit count. Fruit count is usually 0.
A tree has a number called fruit capacity. Fruit capacity is usually 0.

A tree has a text called pet response.
A tree has a text called water response.
A tree has a text called harvest response.

[
After milking the butterfly:
let M be a random milk that is part of the butterfly;
let the new milk be a new object cloned from M;
now the player carries the new milk;
decrease player's energy by 5;
increase player's mood by 1;
now the butterfly is not ready;
if the butterfly is not finished:
now the butterfly is finished;
increase AK Steps by 1;
record "Milked a butterfly" as achieved.
]


[maturity is time-based, assuming proper care]                                              
[water + pet increases health]
[trees are really fucking confusing]

[trees can be rooked or poisoned, in which case they cannot be harvested, petted or watered]

Increasing health is an action applying to nothing.

Carry out tree (called T) increasing health:
if T is not lonely and T is not thirsty:
if health of T < 10, increase the health of T by 1;
now T is lonely;
now T is thirsty.

Increasing naturity is an action applying to nothing.

Carry out tree (called T) increasing maturity:
if maturity of T < 10, increase the maturity of T by 1.

After examining a tree for the first time:
say "Regular watering and petting keeps trees happy and healthy.[paragraph break]The fruit tree says, 'Cough, cough. My, but I am thirsty. If you could water me, I would be very grateful.'"

Volume - Watering

[sound: WATERING_CAN ??? possibly only on failure/breakage]
[during animal kinship: if maturity of T < 10, increase the maturity of T by 1;]

A watering can is a thing. The description is "A stainless-steel 5-gallon watering can. It can be used to water plants, trees, and crops."

Watering is an action applying to one thing.
Understand "water [something]" as watering.

Check watering something (this is the needs a watering can rule):
if the player does not enclose the watering can, say "That's going to be tough without a watering can." instead.

Check watering a tree (called T):
if T is not thirsty, say "[The T] says, 'I don't want to be watered.'"

Carry out watering a tree (called T):
say "Thanks for watering![paragraph break][The T] says [water response of T]".

[The fruit tree says, 'Oh, that hit the spot.'[paragraph break][as the parser]Good work, little one. You can also PET the tree. Everything needs a little love.[as normal]]

After watering a tree (called T):
now T is not thirsty;
decrease the player's energy by 5;
try T increasing health.

Volume - Petting

[sound: PET_TRANT]
[during animal kinship: if maturity of T < 10, increase the maturity of T by 1;]

Check touching a tree (called T):
if T is not lonely, say "[The T] says, 'I don't want to be petted.'"

Carry out touching a tree (called T):
say "Thanks for petting![paragraph break][The T] says [pet response of T]".
[say "The fruit tree says, 'Mmm, thanks for that. Do you want some cherries? You can HARVEST them from me. They're quite yummy, even if I do say so myself.'"
]

After touching a tree (called T):
now T is not lonely;
decrease the player's energy by 2;
try T increasing health.

Volume - Harvesting

Harvesting is an action applying to one thing.
Understand "harvest [something]" as harvesting.

Check harvesting something (this is the can only harvest trees rule):
if the noun is not a tree, say "I don't know what you mean by that." instead.

Check harvesting a tree (called T) (this is the nothing to pick rule):
if the fruit count of T is 0, say "There's nothing to pick, cowboy." instead.

Carry out harvesting a tree (called T):
say "Harvested![paragraph break][The T] says [harvest response of T][first time][paragraph break][as the parser]You're catching on fast.[as normal][only]"

After harvesting a tree (called T):
decrease fruit count by 3;
decrease the player's energy by 5.
[clone 3 of whatever fruit---need a better word---is part of the tree and move to the player]

[sound: BEEN_TREE, BUBBLE_TREE, EGG_TREE, FRUIT_TREE, GAS_TREE, SPICE_TREE, default is HARVEST]

Volume - Fruit Tree

A fruit tree is a tree.
The description is "The glorious Fruit Tree. Thick with tasty cherries ripe to be converted into other delicious fruits, these venerable plants may not be chatty, but they're indispensable for fine edibles and quaffables of all sorts."

The harvest response of fruit tree is "[one of]Yup.[or]Mhm.[or]Frooo?[or]Wannit?[or]F'yoo.[at random]".
The pet response of fruit tree is "[one of]Huh?[or]Oh.[or]Whu?[or]Ah.[or]Pff.[at random]".
The water reponse of fruit tree is "[one of]Hm?[or]Ahh.[or]Glug.[or]Mm?[or]Shhhlrp.[at random]".

A trant_fruit is a kind of food.

A cherry is a kind of trant_fruit. The plural of cherry is cherries.
The description is "A basic cherry, freshly picked from a Fruit Tree.[first time][paragraph break][as the parser]A cherry can be changed into other kinds of fruits, but that is beyond the scope of this demo.[as normal][only]"
The energy of cherry is 1.

One cherry is part of the fruit tree.

Volume - Spice Plants

A spice plant is a tree.
The description is "The delectable Spice Plant. Seductively dangling with Allspice, the millability of this simple brown seed means that everyone's favorite varietal of spice can be found bounded in one shell if you look hard enough."

The harvest response of spice tree is "[one of]Ooooo! Easy there, little grabbyhands…[or]Careful what you're yanking, little friend.[or]Well now. It's a little spice you're after, is it?[or]My… you're a little handsy. Have we been introduced?[or]Oooh! I say! Goosed by a Glitch.[at random]".
The pet response of spice tree is "[one of]Well, well, little one, what a surprise[or]I say…[or]And good day to YOU, little one…[or]Well now…[or]And what would a nice little Glitch like you be doing hugging trees?[at random]".
The water response of spice tree is "[one of]Oh! No, carry on, I like it.[or]Goodness, sneak up on an old tree, why don't you?[or]Water? Well, I suppose I might partake…[or]Well well! That's a pleasant surprise.[or]Ahhhh, you flatter me with this sprinkling.[at random]".

An allspice is a kind of trant_fruit.
The description is "Some basic spice, freshly harvested from a Spice Plant.[first time][paragraph break][as the parser]An allspice can be converted into other spices, but that is beyond the scope of this demo.[as normal][only]"
The energy of allspice is 1.

One allspice is part of the spice plant.

Trees ends here.