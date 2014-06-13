﻿Animals by Helga begins here.

Use authorial modesty.

Volume - Animals

Animal Kinship is a scene.
Animal Kinship begins when the location is Nylon Phool for the first time.
AK Steps is a number that varies. AK Steps is 0.
Animal Kinship ends when AK Steps is 3.

When Animal Kinship ends:
record "Completed Animal Kinship" as achieved;
if sound-allowed is 1, play sound of achievement in foreground;
say "[as the parser]You have gained the Animal Kinship skill![as normal]".

Book - Butterfly

A butterfly is an animal. The plural of butterfly is butterflies.
The description is "A morphously blue butterfly. As any fool knows, butter can't fly, but milk apparently can. Butterflies may need a little kindness before they give up the milk, but milk can always be turned into butter... and cheese... and who knows what else?[first time][paragraph break][as the parser]Butterflies require a [link]MASSAGE[as]massage butterfly[end link] before being milked.[as normal][only]" 

The butterfly can be ready. The butterfly is not ready.
The butterfly can be finished. The butterfly is not finished.

Chapter - Massaging

Understand the command "massage" as "touch".

Before squeezing the butterfly: say "Butterflies prefer to be massaged." instead.

Check touching a butterfly (this is the massages require lotion rule):
	if the player does not enclose the lotion:
		say "The butterfly says, '[one of]Ow! Why not just rub me with gravel?!'[or]OMFG! 2 DRY! UR rubbish.'[or]Ooo, ow, no, bad, stoppit.'[or]Jeez, if you can’t do it properly...'[or]Git ur dry hands off! Yow!'[at random][line break]Massaging a butterfly without lotion? That's not nice. It's too dry." instead.

Carry out touching the butterfly:
say "You massaged a butterfly.[paragraph break][italic type]-1 Energy, +2 Mood[roman type][paragraph break]The butterfly says, '[one of]Thnx, Bigthing.'[or]OMG ur like, gr8'[line break][or]AWSUM msrg.'[or]i <3 u + ur msrgs'[line break][or]K thnx ttyl :)'[line break][or]Msrg! I <3 msrgs! \o/'[line break][or]LOL! Ur, like, all msrgy!'[or]i <333 u!!!!1!'[or]Thnx!'[or]K THNX 4 MSRG BAI!'[or]Ur nice 4 msrgin me. xoxo'[line break][or]OMG UR AWSM! \o/'[line break][or]<333 msrgs'[line break][at random][first time][line break][as the parser]There you go. Now you can [link]MILK[as]MILK butterfly[end link] the butterfly.[as normal][only]";

After touching the butterfly:
	decrease the player's energy by 5;
	increase the player's mood by 2;
	now the butterfly is ready;
	decrease uses of lotion by 1;
	if uses of lotion is 0:
		say "You've used up the last of the lotion.";
		move the lotion to Shimla Shack.

Chapter - Butterfly Lotion

["Nuh-uh. This lotion doesn't work on you. Only butterflies."]

A lotion is a thing. The printed name is "butterfly lotion". Understand "butterfly lotion" as lotion.
The description is "A tiny tube of butterfly lotion, without which a butterfly cannot be massaged. Remember: butterflies chafe easily, but they still like it pretty hard."
The lotion has a number called uses. Uses is 5.

The lotion is in Nylon Phool.

Instead of eating or tasting the lotion:
say "You tried to taste a little but you ended up tasting a lot! And now it's gone! Oddly mood enhancing though.";
increase the player's mood by 12;
move the lotion to Shimla Shack.

After taking the lotion for the first time:
say "[as the parser]This would be great for giving some lucky butterfly a nice massage.[as normal]"

Chapter - Singing

Singing to is an action applying to one thing.
Understand "sing to [someone]" as singing to.

Instead of singing to yourself:
say "You hum a happy, albeit off-key, tune."

Check singing to:
if the noun is not the butterfly, say "[The noun] is agitated by your decidedly un-dulcet tones." instead.

Check singing to a butterfly:
if the player's energy is less than 5, say "You lack sufficient energy to kick out the jams. Maybe you should eat something?" instead.

Carry out singing to the butterfly:
say "Your singing is abominable. But the butterfly seems to enjoy it.[paragraph break][italic type]-5 Energy, +5 Mood[roman type][paragraph break]The butterfly sings back, '[one of]Fruzzup air oogoh merp[or]Kruffin ilx ans uff[or]Toffuzzin rappat ulk[or]Rufflin bilky mong. Urk[or]Pufflunk norky tonk rnmrnmrnm[at random].'"

After singing to the butterfly:
	decrease player's energy by 5;
	increase player's mood by 5;

Instead of singing when a butterfly is in the location: try singing to the butterfly.

Chapter - Milking

Milking is an action applying to one thing.
Understand "milk [something]" as milking.

Check milking (this is the only butterflies can be milked rule):
if the noun is not the butterfly, say "Don't be silly. You can't milk that!" instead.

Check milking the butterfly (this is the butterflies need to be massaged first rule):
if the butterfly is not ready, say "What? No warmup? No preamble? You just walk up to a butterfly with your clammy hands and try to milk it? You have a lot to learn about charming butterflies." instead.

Carry out milking the butterfly:
say "The butterfly responds to your firm yet gentle touch by excreting several drops of its most precious essence. Conveniently, the butterfly also has a vial handy for holding said essence.[paragraph break][italic type]-5 Energy, +1 Mood[roman type].[paragraph break]The butterfly says, '[one of]OMG I TOTES DID U MILX!'[or]i got milx 4 u!!!!!1!!'[or]Milx r awsum! U r awsum!'[or]i <3 u! milx! ttyl!!!1!'[or]gt milx? Ys! ROFL!!!!1!!'[or]You needs milx! You totes HAZ milx!!!'[or]1t milx? Gotz milx! YAY!'[or]I maded milx.'[or]Look @ my milx! U can haz!!!!!!!!!!'[or]U <3 milx? I <3 u!!!'[or]YAY I MADEZ YOU MILX!!!1!'[or]Here iz milx! l8r!!!!'[or]U likez ur milx? YAY! Bai!!!'[or]All theez milxez r 4 u! <3333'[line break][or]Milx! Enjoi! xoxo'[line break][at random]".

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
                
Book - Chicken

A chicken is an animal.
The description is "An easily agitated member of the poultry classes. Given to flights of fearful fantasy, high-pitched paranoia and, frankly, short distances, chickens are a reliable source of grain (it's said that they keep it in the hot pockets under their wings).[first time][paragraph break][as the parser]Chickens give up grain with a simple [link]SQUEEZE[as]SQUEEZE chicken[end link].[as normal][only]"

The chicken can be finished. The chicken is not finished.

Chapter - Squeezing

A grain is a kind of thing. It is edible. The description is "Some plain grain."

One grain is part of the chicken.

The report touching other people rule is not listed in the report touching rulebook.
The innuendo about squeezing people rule is not listed in any rulebook.

Instead of touching the chicken:
say "You give the chicken a nice pat. It clucks in surprise."

Carry out squeezing the chicken:
say "You squoze a chicken. It gives you one grain.[paragraph break][italic type]-1 Energy[roman type][paragraph break]The chicken says, '[one of]Not so hard, you'll tangle my intestinal noodles.'[or]Yes, because chickens don't need personal space too? Pah.'[or]Consider my feathers ruffled. Buk.'[or]Chicken-ruffler! Alarm! Alarm!'[or]Always with the squeezing!'[or]Do YOU like to be squeezed by random strangers? Hmn?'[at random]"

After squeezing the chicken:
	decrease player's energy by 1;
	let G be a random grain that is part of the chicken;
	let the new grain be a new object cloned from G;
	now the player carries the new grain;
	if the chicken is not finished:
		now the chicken is finished;
		increase AK Steps by 1;
		record "Squoze a chicken" as achieved.

Book - Piggy

The piggy is an animal. Understand "pig" as a piggy. The plural of piggy is piggies.
The description is "One happy little porcine with a laidback attitude to life and a lot of love to give. Whether wild or domestic, the piggy gives wisdom from one end, useful gardening supplies from the other, and delicious meat from everywhere inbetween.[first time][paragraph break][as the parser]Piggies can be nibbled to gain meat. But they prefer to be [link]PET[as]PET piggy[end link] first.[as normal][only]"

The piggy can be finished. The piggy is not finished.
The piggy can be friendly. The piggy is not friendly.
The piggy has a number called uses. Uses is 5.

Chapter - Petting

Understand the command "pet" as "touch".

Before squeezing the piggy: say "Piggies do not enjoy being squeezed. Try petting it instead." instead.

Carry out touching the piggy:
say "You petted a piggy.[paragraph break][italic type]-4 Energy, +1 Mood[roman type][paragraph break]The piggy says, '[one of]Duuuuude. I'm, like super-relaxed[or]You pet like a pro, bro[or]I don't think any pig has ever been this relaxed[or]So relaxed. You should probably know I fart when I'm relaxed[or]Super-sick petting action, pal[or]Dude, you literally could not suck less at this[or]Sweet, dude. Sweet[or]You're some handy dandler, I'll give you that[or]A firm hand cures all gnarliness. Yes[at random].'"

Before touching the piggy for the first time: say "[as the parser]That's the stuff. Now, having petted the piggy, you might give it a little [link]NIBBLE[as]NIBBLE piggy[end link].[as normal]"

After touching the piggy:
decrease player's energy by 4;
increase player's mood by 1;
now the piggy is friendly.

Chapter - Nibbling

A meat is a kind of thing. Meat is edible.
The description is "A simple meat."

One meat is part of the piggy.

Understand the command "nibble" as "eat".

Nibbling is an action applying to one thing.
Understand "nibble [piggy]" as nibbling.
Before eating the piggy: try nibbling the piggy instead.

Check nibbling the piggy (this is the piggies need to be pet first rule):
if the piggy is not friendly, say "The piggy says, '[one of]Gnarly nibble' wipeout!  (That means you failed, friend)[or]Ain't no such thing as a free lunch, dude.[or]No love, no nibblin[']. I ain't no fool.[or]Don't be rash. No rashers for the rash.[or]Finagle my porkloin without even a cuddle first? No way![at random]'[paragraph break]Give that piggy some love first!" instead.

Check nibbling the piggy (this is the feed the piggy rule):
if the uses of piggy is 0, say "The piggy says, '[one of]Denied, friend, I'm all nibbled out![or]Nah. Not happening. Meat out, dude![at random]'[paragraph break]That piggy doesn't feel like being nibbled right now." instead.

[sounds NIBBLE_PIGGY, PIGGY_SCOFFS]

Carry out nibbling the piggy:
say "You nibbled a piggy. Piggy likes that! He gives you one meat.[paragraph break][italic type]-2 Energy.[roman type][paragraph break]The piggy says, '[one of]Here you go, dude - chop chop[or]Your supertight nibblatory skills impress me[or]A little more off the side? Sweet, dude[or]You want cooking suggestions? I say yes: Cook[or]You keep me sweet, you get your meat. Dude that rhymes[or]Take meat, this is my booty, just for you[or]You are what you eat, friend. And so am I[at random].'"

After nibbling the piggy:
	let M be a random meat that is part of the piggy;
	let the new meat be a new object cloned from M;
	now the player carries the new meat;
	decrease player's energy by 2;
	now the piggy is not friendly;
	decrease uses of piggy by 1;
	if the piggy is not finished:
		now the piggy is finished;
		increase AK Steps by 1;
		record "Nibbled a piggy" as achieved.

Chapter - Feeding

A plop is a kind of thing. The printed name is "piggy plop". Understand "piggy plop" as plop.
The description is "Piggy plop is the delicately scented excrescence of a healthy piggy. Round, brown, and mysterious, it may contain presents."

One plop is part of the piggy.

Instead of giving something to the piggy: try feeding the noun to the piggy.

Feeding it to is an action applying to two things.
Understand "feed [something] to [something]" as feeding it to.

Check feeding something to the piggy:
if the noun is not a crop, say "Piggies only eat veggies." instead.

[Technically not true. Pigs will eat anything edible, but only crops give seeds. Pigs will even eat meat.]
["You don't have anything the piggy wants to eat!"]

Carry out feeding something to the piggy:
say "You feed [a noun] to the piggy.[paragraph break]The piggy says, '[one of]Nom nom burp nom excuse me dude nom.'[or]Pigs are omnivores, right? Cuz I'm eatin' ALLa this.'[or]Ahh. Wait, did you want to go halvsies?'[or]That'll do, dude. That'll do.'[or]I like you the most. Well, second-most (after your food).'[or]Can't. Talk. Eating. Laters.'[or]Piggy picnic!'[or]Sweet snackage, chum.'[or]Super-snafflable scran, man.'[or]Wait, Scooby Snacks do direct delivery? Awsum.'[or]So. Full. Well, maybe a *little* more.'[or]Nom nom nom.'[or]You're my favourite, friend. Loves.'[at random]";
try the piggy eating the noun.

Every turn:
	if the number of crops in the location of the piggy > 0:
		let vegetable be a random crop in the location of the piggy;
		if the location of the piggy is the location of the player, say "The piggy eats [a vegetable].";
		try the piggy eating the vegetable.

Before the piggy eating something:
now the piggy carries the noun.
                
After the piggy eating something:
	now uses of piggy is 5;
	now the noun is part of the piggy;
	if number of crops that are part of the piggy is 3:
		let P be a random plop that is part of the piggy;
		let the new plop be a new object cloned from P;
		now the new plop is in the location;
		repeat with vegetable running through the list of crops that are part of the piggy:
			remove vegetable from play.		

[TODO: differentiate between different crops; put seeds inside plop; hint about searching them]
["You found a packet of [type] seeds in that plop!"]
["you can make a Piggy plop by feeding it any crop products (like potatoes, onions, broccoli, cabbage, corn, etc.)"]

Instead of smelling a plop:
say "Not bad, actually. You've smelled worse. Indeed you have."

Instead of eating or tasting a plop:
say "To be frank, we didn't think anyone would ever choose to taste a Piggy Plop. We're kind of at a loss here. Let's all just go about our business and pretend this never happened."

Animals ends here.