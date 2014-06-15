Volume - Seasoned Eggs

Book - Butterfly Egg

A butterfly egg is a kind of thing.
The description is "An egg seasoned with the specific mix of lepidopteral herbs and spices to hatch a Caterpillar."
The base_cost of Butterfly Egg is 400.

Book - Piggy Egg

A piggy egg is a kind of thing.
The description is "An egg seasoned with special porcine spices to hatch a Piglet."
The base_cost of Piggy Egg is 300.

Book - Chicken Egg

A chicken egg is a kind of thing.
The description is "An egg treated with special poultry seasoning to hatch a Chick."
The base_cost of Chicken Egg is 200.

Volume - Other

Book - Batterfly Bounty Booster Bar

A batterfly bounty booster bar is a kind of thing.
The description is "An extremely potent concoction which is rumored to produce a prodigious amount of Guano from a Batterfly."
The base_cost of Batterfly Bounty Booster Bar is 41.

Book - Fox Bait

A fox bait is a kind of thing.
The description is "A nugget of fox-pleasing goodness, filled with every fox's favourite flavours. Proof positive that you catch more foxes with Fox Bait than you do with vinegar (just in case anyone suggested the alternative, which on reflection seems unlikely)."
The base_cost of Fox Bait is 30.

Book - Pig Bait

A pig bait is a kind of thing.
The description is "A sack of tempting pig bait. It can be used to try to capture wild piggies."
The base_cost of Pig Bait is 25.

Book - Butterfly Net

A butterfly net is a kind of thing.
The description is "It sure makes catching Butterflies easier, but at what cost?"
The base_cost of Butterfly Net is 150.





Volume - Baby Animals

to say sad_baby_animal: say "'[one of]Don't like it here. It's smelly.[or]I don't like this. You promised me fun. This isn't fun.[or]I don't wanna be here.[or]I'm BORED.[or]Take me away from here, it's lame. I hate it.[or]This is boring, why did you bring me here? It's lame.[or]What is this place anyway, it's rubbish, take me somewhere else.[or]Where ARE we? It's Lame-o. LAME-O.[at random]'"

[TODO: if fed in the inventory, a fully-fed animal will automatically drop to the ground]

Book - Caterpillar

A caterpillar is a kind of animal.
The description is "A proto-Butterfly. It needs to be fed to blossom into a full-Butterfly.""

Check feeding something to a caterpillar:
if the noun is not a bubble and the noun is not a green leaf, say "Caterpillars like leaves and things that pop." instead.

Carry out feeding something a caterpillar (called C):
say "You feed [a noun] to the caterpillar.";
say "It grew into a Butterfly!";
[replace caterpillar with butterfly]

Check feeding something to a sad caterpillar:
say "The caterpillar is too busy complaining to eat." instead.

Book - Chick

A chick is a kind of animal.
The description is "A wide-eyed chick, fresh from the egg. It needs grain in order to reach full chickenhood."

Chapter - Feeding

A chick has a number called feed_count.

Check feeding something to a chick:
if the noun is not a grain, say "Chicks need to eat grain to grow." instead.

Carry out feeding something a chick (called C):
say "You feed [a noun] to the chick.";
increase feed_count of C by 1;
if feed_count is 10, say "It grew into a Chicken!"
[replace chick with chicken]

Check feeding something to a sad chick:
say "This chick is off its food in these uncomfortable surroundings!" instead.

Chapter - Smiling

Smiling at is an action applying to one thing.
Understand "smile at [something]" as smiling at.

Carry out smiling at: say "You smile at [the noun]."

Instead of smiling at a chick: 
say "You smiled at a Chick. The chick stares back at you with its unblinking little eyes. For such a small creature, this is surprisingly unnerving. You lose 3 mood.";
decrease player's mood by 3.

Instead of smiling at a sad chick:
say "The chick's unblinking gaze conveys its extreme distaste for its surroundings. You feel embarrassed for smiling at it.";
decrease player's mood by 5.

Book - Piglet

A piglet is a kind of animal.
The description is "One wiggly little piggly. He wants to turn into a big pig. Feed him nourishing plant-y food to help him grow."

Chapter - Feeding

A piglet has a number called feed_count.

Check feeding something to a sad piglet:
say "This place seems to give this piglet the howling fantods, and it refuses food." instead.

Check feeding something to a piglet:
if the noun is not a crop, say "Piggies will eat just about anything that grows in the ground." instead.

Carry out feeding something to a piglet (called P):
say "You feed [a noun] to the piglet.";
increase feed_count of P by 1;
if feed_count is 3, say "It grew into a Piggy!"
[replace piglet with piggy]

Chapter - Humming

Understand the command "hum" as "sing".
Understand the command "hum to" as "sing to".

Carry out singing to a piglet:
say "You hum an off-key hum. Fortunately, piggies are tone deaf. The piglet squirms delightedly. You squirm a little bit, too."

After singing to a piglet:
decrease player's energy by 2;
increase player's mood by 2.

Instead of singing to a sad piglet:
say "You hum an off-key hum, but the piglet is too unhappy here to notice. Its misery is contagious.";
decrease the player's mood by 2;
decrease the player's energy 2.
