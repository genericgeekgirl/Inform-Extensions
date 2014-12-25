Animals by Helga begins here.

Use authorial modesty.

Volume - Animal Kinship

Animal Kinship is a scene.
Animal Kinship begins when the location is Nylon Phool for the first time.
AnimalKinship is a number that varies. AnimalKinship is 0.
Animal Kinship ends when AnimalKinship is 1.

Every turn when Animal Kinship is happening:
	if a milk has been handled and a meat has been handled and a grain has been handled:
		now AnimalKinship is 1;
		record "A L'il Animal Kinship" as achieved;
		if sound-allowed is true, play sound of achievement in foreground;
		say "[as the parser]Petting? Nibbling? You're well on your way now, kid.[as normal]"

Volume - Animals
        
[TODO: Not used in the demo.]
An animal can be sad. An animal is usually not sad.

Volume - Butterfly

A butterfly is a kind of animal. The printed name is "butterfly". Understand "butterfly" as butterfly. The plural of butterfly is butterflies. 
The description is "A morphously blue butterfly. As any fool knows, butter can't fly, but milk apparently can. Butterflies may need a little kindness before they give up the milk, but milk can always be turned into butter... and cheese... and who knows what else?" 

A butterfly can be ready to milk. A butterfly is usually not ready to milk.

A butterfly has a number called lifepoints. Lifepoints is usually 400.

Book - Capture

Check taking a butterfly: say "You'll never catch it with your bare hands." instead.

A net is a kind of thing. The printed name of a net is "butterfly net". Understand "butterfly net" as a net.
The description is "It sure makes catching Butterflies easier, but at what cost?"

Book - Massaging

Understand the command "massage" as "touch".

Before squeezing a butterfly: say "Butterflies prefer to be massaged." instead.

Check touching a butterfly (this is the massages require lotion rule):
	if the player does not enclose the lotion:
		say "The butterfly says, [butterfly-massage-fail][line break]Massaging a butterfly without lotion? That's not nice. It's too dry." instead.

To say butterfly-massage-fail: say "'[one of]Ow! Why not just rub me with gravel?!'[or]OMFG! 2 DRY! UR rubbish.'[or]Ooo, ow, no, bad, stoppit.'[or]Jeez, if you can’t do it properly...'[or]Git ur dry hands off! Yow!'[in random order]"

Carry out touching a butterfly:
	say "You massaged a butterfly.[paragraph break]The butterfly says, [butterfly-massage-success]";
	if sound-allowed is true, play sound of massage butterfly in foreground.

To say butterfly-massage-success: say "'[one of]Thnx, Bigthing.'[or]OMG ur like, gr8.'[or]AWSUM msrg.'[or]i <3 u + ur msrgs'[line break][or]K thnx ttyl :)'[line break][or]Msrg! I <3 msrgs! \o/'[line break][or]LOL! Ur, like, all msrgy!'[or]i <333 u!!!!1!'[or]Thnx!'[or]K THNX 4 MSRG BAI!'[or]Ur nice 4 msrgin me. xoxo.'[or]OMG UR AWSM! \o/'[line break][or]<333 msrgs'[line break][in random order]".
        
After touching a butterfly (called B):
	decrease the player's energy by 5;
	increase the player's mood by 2;
	now B is ready to milk;
	let L be a random lotion enclosed by the player;        
	decrease uses of L by 1;
	if uses of L is 0:
		say "You've used up the last of the lotion.";
		remove L from play.

Chapter - Butterfly Lotion

A lotion is a kind of thing. The printed name of a lotion is "butterfly lotion". Understand "butterfly lotion" as a lotion.
The description is "A tiny tube of butterfly lotion, without which a butterfly cannot be massaged. Remember: butterflies chafe easily, but they still like it pretty hard."

A lotion has a number called uses. Uses is usually 5.

Before going to nylon phool:
	if a lotion is off-stage, move a random lotion that is off-stage to Nylon Phool.

One lotion is in Nylon Phool.

Instead of eating or tasting a lotion (called L):
	say "You tried to taste a little but you ended up tasting a lot! And now it's gone! Oddly mood enhancing though.";
	increase the player's mood by 12;
	remove L from play.

Instead of using a lotion when a butterfly is in the location:
	let B be a random butterfly in the location;
	try touching B.

Instead of using a lotion (called L) on a butterfly:
	try using L.
        
Check using a lotion on something:
	if the second noun is not the butterfly:
		say "Nuh-uh. This lotion doesn't work on [printed plural name of second noun]. Only butterflies." instead.

Before using a lotion (called L):
	if the player does not enclose L:
		try silently taking L;
		say "You pick up a bottle of lotion.[paragraph break]"
         
Book - Singing

Singing to is an action applying to one thing.
Understand "sing to [someone]" as singing to.

Instead of singing to yourself:
	say "You hum a happy, albeit off-key, tune."

Check singing to:
	if the noun is not a butterfly, say "[The noun] is agitated by your decidedly un-dulcet tones." instead.

Check singing to a butterfly:
	if the player's energy is less than 5, say "You lack sufficient energy to kick out the jams. Maybe you should eat something?" instead.

To say butterfly-sing: say "[one of]Fruzzup air oogoh merp[or]Kruffin ilx ans uff[or]Toffuzzin rappat ulk[or]Rufflin bilky mong. Urk[or]Pufflunk norky tonk rnmrnmrnm[in random order]";

Carry out singing to a butterfly:
	say "Your singing is abominable. But the butterfly seems to enjoy it.[paragraph break]The butterfly sings back, '[butterfly-sing].'";
	if sound-allowed is true, play sound of singing butterfly in foreground.

After singing to a butterfly:
	decrease player's energy by 5;
	increase player's mood by 5;

Instead of singing when a butterfly is in the location:
	let B be a random butterfly in the location;
	try singing to B.

Book - Milking

Milking is an action applying to one thing.
Understand "milk [something]" as milking.

Before doing anything except taking to a milk (called M):
	if M is part of a butterfly:
		say "You can't see any such thing." instead.

Before taking a milk (called M):
	if M is part of a butterfly:
		let B be a random butterfly in the location;
		try milking B instead.

Check milking (this is the only butterflies can be milked rule):
	if the noun is not a butterfly, say "Don't be silly. You can't milk that!" instead.

Check milking a butterfly (called B) (this is the butterflies need to be massaged first rule):
	if B is not ready to milk:
		if sound-allowed is true, play sound of butterfly hmpf in foreground;
		say "What? No warmup? No preamble? You just walk up to a butterfly with your clammy hands and try to milk it? You have a lot to learn about charming butterflies." instead.
                
Carry out milking a butterfly:
	say "The butterfly responds to your firm yet gentle touch by excreting several drops of its most precious essence. Conveniently, the butterfly also has a vial handy for holding said essence.[paragraph break]The butterfly says, [butterfly-milk-success]";
	if sound-allowed is true, play sound of milk butterfly in foreground.

To say butterfly-milk-success: say "'[one of]OMG I TOTES DID U MILX!'[or]i got milx 4 u!!!!!1!!'[or]Milx r awsum! U r awsum!'[or]i <3 u! milx! ttyl!!!1!'[or]gt milx? Ys! ROFL!!!!1!!'[or]You needs milx! You totes HAZ milx!!!'[or]1t milx? Gotz milx! YAY!'[or]I maded milx.'[or]Look @ my milx! U can haz!!!!!!!!!!'[or]U <3 milx? I <3 u!!!'[or]YAY I MADEZ YOU MILX!!!1!'[or]Here iz milx! l8r!!!!'[or]U likez ur milx? YAY! Bai!!!'[or]All theez milxez r 4 u! <3333'[line break][or]Milx! Enjoi! xoxo'[line break][in random order]"
        
After milking a butterfly (called B):
	let M be a random milk that is part of B;
	let the new milk be a new object cloned from M;
	now the new milk is in the location;
	try silently taking the new milk;
	decrease player's energy by 5;
	increase player's mood by 1;
	now B is not ready to milk.
                
Volume - Chicken

A chicken is a kind of animal.
The description of a chicken is "An easily agitated member of the poultry classes. Given to flights of fearful fantasy, high-pitched paranoia and, frankly, short distances, chickens are a reliable source of grain (it's said that they keep it in the hot pockets under their wings)."

Check taking a chicken:
	say "You try to scoop the chicken up in your arms, but it squawks loudly and flutters away." instead.

A chicken has a number called lifepoints. Lifepoints is usually 2000.
        
Book - Incubation (TODO)

A chicken can be incubating. A chicken is usually not incubating.

Requesting incubation is an action applying to two things.
Incubation is an action applying to one thing.

[say "Only chickens can incubate eggs!"]
[say "Chickens incubate eggs. You don't have any."]
[say "The chicken says, 'Sorry, I've already got a bun in the oven. Come back when I have free space for more eggs.'"]
[You asked the chicken to incubate an egg.]

To say incubation_complete: say "[one of]Ping![or]Done! What were you expecting, 3 1/2 minutes?[or]Buk! It bit my butt! You owe me a beer.[or]Here.
Another new life. A miracle. Thank me later.[or]Ta DA![at random]"

To say incubation_start: say "[one of]Now the chicken is superior, eh? Wait here ONE MINUTE and I'll give it back.[or]No squeezing while I sit? Ok
deal. But, you can't leave for a whole minute. Stay, if you want your animal.[or]Well, comfortable it isn't... but ok. Deal is that you have to wait
a full minute.[or]I'm egg-static to be of service. That was sarcasm. But whatever ... if you stick around for a minute I'll get 'er done.[or]At
least you appreciate my warm underfeatheredside.  Love it! Also, stick around for sixty seconds or lose it![at random]"

Book - Buttering Up

Complimenting is an action applying to one thing.
Understand "butter up [something]" as complimenting.

Carry out complimenting: say "Aw, that's sweet."

Instead of complimenting a chicken:
	say "You tell the chicken how wonderful it is.[paragraph break]The chicken says, 'That's the nicest thing I've ever heard. Thank you!'";
	increase the player's mood by 10;
	decrease the player's energy by 4;
	if sound-allowed is true, play sound of happy chicken in foreground.

Check complimenting an incubating chicken:
	say "This chicken is focused on the miracle of life! No butter!" instead.

Check complimenting a sad chicken:
	say "Hold the butter! This chicken is too sad." instead.

Book - Squeezing

The report touching other people rule is not listed in the report touching rulebook.
The innuendo about squeezing people rule is not listed in any rulebook.

Instead of touching a chicken:
	say "You give the chicken a nice pat. It clucks in surprise."

Before doing anything except taking to a grain (called G):
	if G is part of a chicken:
		say "You can't see any such thing." instead.

Before taking a grain (called G):
	if G is part of a chicken:
		let C be a random chicken in the location;
		try squeezing C instead.

Carry out squeezing a chicken:
	say "You squoze a chicken. It gives you one grain.[paragraph break]The chicken says, [chicken-squeeze-success]";
	if sound-allowed is true, play sound of chicken squeeze in foreground.

To say chicken-squeeze-success: say "'[one of]Not so hard, you'll tangle my intestinal noodles.'[or]Yes, because chickens don't need personal space too? Pah.'[or]Consider my feathers ruffled. Buk.'[or]Chicken-ruffler! Alarm! Alarm!'[or]Always with the squeezing!'[or]Do YOU like to be squeezed by random strangers? Hmn?'[in random order]"

After squeezing a chicken:
	decrease player's energy by 1;
	let G be a random grain that is part of the chicken;
	let the new grain be a new object cloned from G;
	now the new grain is in the location;
	try silently taking the new grain.

Check squeezing an incubating chicken:
	say "What kind of weirdo squeezes an incubating chicken?" instead.

Volume - Piggy

A piggy is a kind of animal. Understand "pig" as a piggy. The plural of piggy is piggies.
The description of a piggy is "One happy little porcine with a laidback attitude to life and a lot of love to give. Whether wild or domestic, the piggy gives wisdom from one end, useful gardening supplies from the other, and delicious meat from everywhere inbetween."

A piggy can be ready to nibble. A piggy is usually not ready to nibble.
A piggy has a number called meat count. Meat count is usually 5.

A piggy has a number called hungerpoints. Hungerpoints is usually 0.
[0 is satiated, 10 is about to die; base-cost of at least 5 resets hunger to 0; nibbling increases hunger; hunger over 4 cannot be nibbled.]
[If there is a Tree on the street, they will feed off the tree instead (shrinking the tree one growth level)]
[Dead pigs leave 10 meet and a plop containing random seeds]

Book - Capture

Check taking a piggy: say "The piggy says, [piggy-capture-fail]" instead.
        
To say piggy-capture-fail: say "'[one of]No way, dude! I'm not a one-Glitch piggy[or]Man, I'm totally not ready to settle down[or]I like to think of myself as a free spirit[or]Not today, friend. I'm happy chewing on this gnarly patch[or]No, dude. I'm dandy just hangin['] out here. Mañana[at random].'".

A pig bait is a kind of thing. The description is "A sack of tempting pig bait. It can be used to try to capture wild piggies."

Book - Petting

Understand the command "pet" as "touch".

Before squeezing a piggy:
	say "Piggies do not enjoy being squeezed. Try petting it instead." instead.

Before doing anything except taking to a meat (called M):
	if M is part of a piggy:
		say "You can't see any such thing." instead.

Before taking a meat (called M):
	if M is part of a piggy:
		let P be a random piggy in the location;
		try nibbling P instead.

Carry out touching a piggy:
	say "You petted a piggy.[paragraph break]The piggy says, [piggy-pet-success]";
	if sound-allowed is true, play sound of pet piggy in foreground;

To say piggy-pet-success: say "'[one of]Duuuuude. I'm, like super-relaxed[or]You pet like a pro, bro[or]I don't think any
pig has ever been this relaxed[or]So relaxed. You should probably know I fart when I'm relaxed[or]Super-sick petting action, pal[or]Dude, you
literally could not suck less at this[or]Sweet, dude. Sweet[or]You're some handy dandler, I'll give you that[or]A firm hand cures all gnarliness.
Yes[in random order].'"

After touching a piggy (called P):
	decrease player's energy by 4;
	increase player's mood by 1;
	now P is ready to nibble.

Check touching a sad piggy:
	say "This pig is too upset by its surroundings to want attention." instead.

Book - Nibbling

Nibbling is an action applying to one thing.
Understand "nibble [piggy]" as nibbling.

Before eating a piggy (called P): try nibbling P instead.

Check nibbling a piggy (called P) (this is the piggies need to be pet first rule):
	if P is not ready to nibble:
		if sound-allowed is true, play sound of piggy scoff in foreground;
		say "The piggy says, [piggy-nibble-fail][line break]Give that piggy some love first!" instead.

To say piggy-nibble-fail: say "'[one of]Gnarly nibble['] wipeout!  (That means you failed, friend.)'[line break][or]Ain't no such thing as a
free lunch, dude.'[or]No love, no nibblin[']. I ain't no fool.'[or]Don't be rash. No rashers for the rash.'[or]Finagle my porkloin without even a
cuddle first? No way!'[in random order]".
                
Check nibbling a piggy (called P) (this is the feed the piggy rule):
	if the meat count of P is 0:
		say "The piggy says, [piggy-nibble-empty][line break]That piggy doesn't feel like being nibbled right now." instead.

To say piggy-nibble-empty: say "'[one of]Denied, friend, I'm all nibbled out!'[or]Nah. Not happening. Meat out, dude!'[in random order]"

Carry out nibbling a piggy:
	say "You nibbled a piggy. Piggy likes that! He gives you one meat.[paragraph break]The piggy says, [piggy-nibble-success]";
	if sound-allowed is true, play sound of nibble piggy in foreground.

To say piggy-nibble-success: say "'[one of]Here you go, dude - chop chop[or]Your supertight nibblatory skills impress me[or]A little more off the side? Sweet, dude[or]You want cooking suggestions? I say yes: Cook[or]You keep me sweet, you get your meat. Dude that rhymes[or]Take meat, this is my booty, just for you[or]You are what you eat, friend. And so am I[in random order].'"
        
After nibbling a piggy (called P):
	let M be a random meat that is part of P;
	let the new meat be a new object cloned from M;
	now the new meat is in the location;
	try silently taking the new meat;
	decrease player's energy by 2;
	now P is not ready to nibble;
	decrease meat count of P by 1.

Check nibbling a sad piggy:
	say "This pig is too upset by its surroundings to want to be nibbled." instead.

Book - Feeding

Feeding it to is an action applying to two things.
Understand "feed [something] to [something]" as feeding it to.

Check feeding something to something:
	if the second noun is not an animal:
		say "You can only do that to something animate." instead.

Instead of giving something to an animal: try feeding the noun to the second noun.

Check feeding something to an animal:
	if the second noun is not a piggy or the noun is not food:
		say "[The second noun] doesn't want to eat that." instead.

Carry out feeding something to a piggy (called P):
	say "You feed [a noun] to the piggy.[paragraph break]The piggy says, [piggy-feeding-success]";
	try P eating the noun.

To say piggy-feeding-success: say "'[one of]Nom nom burp nom excuse me dude nom.'[or]Pigs are omnivores, right? Cuz I'm eatin['] ALLa this.'[or]Ahh. Wait, did you want to go halvsies?'[or]That'll do, dude. That'll do.'[or]I like you the most. Well, second-most (after your food).'[or]Can't. Talk. Eating. Laters.'[or]Sweet snackage, chum.'[or]Super-snafflable scran, man.'[or]Wait, Scooby Snacks do direct delivery? Awsum.'[or]So. Full. Well, maybe a *little* more.'[or]Nom nom nom.'[or]You're my favourite, friend. Loves.'[in random order]".
        
Every turn:
	repeat with P running through the list of piggies:
		let L be the location of P;
		if the number of crops in L > 0:
			let vegetable be a random crop in L;
			if L is the location of the player, say "The piggy eats [a vegetable].";
			try P eating the vegetable.

Before a piggy (called P) eating something:
	now P carries the noun.

Carry out a piggy eating something:
	if sound-allowed is true, play sound of feed piggy in foreground.
                
After a piggy (called P) eating something:
	now meat count of P is 5;
	now the noun is part of P;
	let N be the number of crops that are part of P;
        if N > 1 and the remainder after dividing N by 3 is 0, try P creating a plop.

Check feeding something to a sad piggy:
	say "This pig is too upset by its surroundings to think about food." instead.

Chapter - Piggy Plops (TODO)

A plop is a kind of thing. The printed name is "piggy plop". Understand "piggy plop" as plop.
The description is "Piggy plop is the delicately scented excrescence of a healthy piggy. Round, brown, and mysterious, it may contain presents."

After examining a plop for the first time:
say "[as the parser]Sometimes you have to search items to find out what's hiding in them.[as normal]"

One plop is part of every piggy.

Creating a plop is an action applying to nothing.

Carry out a piggy (called P) creating a plop:
	let Z be a random plop that is part of P;
	let V be a random crop that is part of P;
	let S be a random crop seed that is part of V;        
	let the new plop be a new object cloned from Z;
	move S to the new plop;
	now the new plop is in the location;
	while number of crops that are part of P > 0:
		let V be a random crop that is part of P;
		remove V from play;
	if sound-allowed is true, play sound of piggy plop in foreground;
	say "The piggy plopped on the ground.";
	say "[as the parser]You can make a Piggy plop by feeding it any crop products.[as normal]"

Instead of searching a plop (called P):
	let seed be a random crop seeds that is enclosed by P;
	say "You found [a seed]!";
	now seed is in the location;
	try silently taking seed;
	remove P from play.        
        
Before doing anything to a plop (called P):
	if P is part of a piggy:
		say "You can't see any such thing." instead.

[Technically you need three crops of a kind to produce a seed packet, but gah.]

Instead of smelling a plop:
	say "Not bad, actually. You've smelled worse. Indeed you have."

Instead of eating or tasting a plop:
	say "To be frank, we didn't think anyone would ever choose to taste a Piggy Plop. We're kind of at a loss here. Let's all just go about our business and pretend this never happened."

Volume - Crab (TODO)

The crab is an animal.
The description is "Anyone knows music makes crabs happy, but it takes an expert DJ to satiate both the appetite for variety and yen for classic tunes it desires. The tunesmith who can play a full array of songs will be richly rewarded."

A crab can be flattered. The crab is not flattered.

Book - CrabPod Headphones

A crabpod headphones is a kind of thing.
The description is "These appear to be the kind of headphones only a crab could love. The sound quality is fabulous, but they really pinch your earlobes."

[verbs: hug, flatter, pinch, insult]

Volume - Fox (TODO)

A fox is a kind of animal. The plural of fox is foxes.
The description is "The sly, cunning, quick brown fox has a tail full of fibers perfect for spinning. Shifting position quickly, you can rely on a fox to be fast-paced, slippery and hard to pin down, they care deeply about some things (getting as much bait as they can, giving up as few tail hairs as possible to society) but interact very little with the real world."

To say brushed: say "[one of]Oof! You got me![or]I was quick, you were quicker![at random]"

A fox bait is a kind of thing.
The description is "A nugget of fox-pleasing goodness, filled with every fox's favourite flavours. Proof positive that you catch more foxes with Fox Bait than you do with vinegar (just in case anyone suggested the alternative, which on reflection seems unlikely)."

A fox brush is a kind of thing.
The description is "One finely crafted Brush for the grooming of fantastic foxes and removing fine Fibers from their bushy tails."
The plural of fox brush is fox brushes.

Volume - Salmon (TODO)

A salmon fish is a kind of animal. The printed name is "salmon". The plural of salmon fish is salmen.
The description is "One fresh, wild, slinky, slippery salmon. Some say there is a soul of a Glitch contained within each salmon. In which case,
souls taste delicious when stuffed in your pocket then grilled up on a nice rustic plank."

A boot is a kind of thing.
A pocket salmon is a kind of thing.

Pocketing is an action applying to one thing.
Understand "pocket [something]" as pocketing.
Carry out pocketing: say "I'm sorry. I don't know what you mean by that."

Instead of pocketing a salmon fish:
	let N be a random number between 1 and 10;
	if N is 1:
		say "You have caught a... boot?!?";
		now the player carries a random boot that is off-stage;
	otherwise:
		say "You pocket the salmon.";
		now the player carries a random pocket salmon that is off-stage.

Volume - Batterfly (TODO)

A batterfly is a kind of animal. The plural of batterfly is batterflies.
The description is "Found in caverns (where the perpetual darkness may account for their pissy mood) it has been shown that Batterflies, when fed at one end, produce useful agricultural materials from the other."

Volume - Guano Production

Understand "feed [something] to [batterfly]" as feeding it to.

A batterfly has a number called BC_Counter. BC_Counter is usually 0.

Instead of feeding something to a batterfly (called B):
	Increase the BC_Counter of B by the energy of the noun;
	if the BC_Counter of B is less than 15:
		say "The batterfly says, [batterfly_guano_0]";
	otherwise:
		now the BC_Counter of B is 0;
		if the BC_Counter of B is less than 50:
			say "The batterfly says, [batterfly_guano_1]";
		otherwise if the BC_Counter of B is less than 100:
			say "The batterfly says, [batterfly_guano_2]";
		otherwise:
			say "The batterfly says, [batterfly_guano_3]".

To say batterfly_guano_0: say "[one of]Nope. No poop.[or]*Unnngh* Nope.[or]For that? nothing.[or]My stomach is not even full.[or]I don't really need to go yet.[at random]"

To say batterfly_guano_1: say "[one of]poop[or]*heaving sigh*[or]this is all you deserve[or]small comfort for you[or]a little gift from the darkness[at random]"

To say batterfly_guano_2: say "[one of]poop poop[or]*deep sigh*[or]this is all you're getting[or]a measure of comfort for your trouble, yes?[or]a Glitch-sized guanoparcel from the deep[at random]"

To say batterfly_guano_3: say "[one of]happy poopday. poop poop poop.[or]*sigh*[or]this is all i have[or]make yourself comfortable with this[or]giant guanogifts for your dungeonic overkindness[at random]";

Book - Batterfly Bounty Booster Bar

A batterfly bounty booster bar is a kind of thing.
The description is "An extremely potent concoction which is rumored to produce a prodigious amount of Guano from a Batterfly."

Animals ends here.

[TODO: Talk to animals.]

[butterflies, chickens and piggys: Revive, Apply Balm, Apply Youth, Name, Rename]
["Revive this $animal with some Rook Balm."
"Make this $animal young again."
"Give this $animal a name."
"Change this $animal's name."
"Help this $animal escape the effects of The Rook."
"Release this $animal into the wilderness."
"You need to know Herdkeeping to set animals free."
"Are you sure you want to let your $animal out into the wilderness?"
"Your $animal has gone to enjoy its life in the wilderness."]

To say wisdom: say "[one of]A pig in the hand is worth two in the poke.[or]After you tend a weedy patch, plant something quickly, or all your efforts will be for naught.[or]Cherries are the root of all fruits[or]Cosma does not remember the butterflies, but we remember her.[or]Don't sweat the petty things. Also, don't pet the sweaty things.[or]Don't take any wooden coins.[or]Have you been hoeing weedy patches to no avail? Soil Appreciation will help you.[or]If a plant isn't hungry, don't feed it, silly.[or]If you want to choose what kinds of beans to plant, you're going to need a Bean Seasoner.[or]Now is the Kukubee Winter of our discontent.[or]Of course the chicken came before the egg. That's why it crossed the road.[or]What is the sound of one piggy napping?[or]You'll have more luck nibbling piggies if you pet and feed them first.[cycling]"

Volume - Seasoned Eggs

A seasoned egg is a kind of thing.

Book - Butterfly Egg

A butterfly egg is a kind of seasoned egg.
The description is "An egg seasoned with the specific mix of lepidopteral herbs and spices to hatch a Caterpillar."

Book - Piggy Egg

A piggy egg is a kind of seasoned egg.
The description is "An egg seasoned with special porcine spices to hatch a Piglet."

Book - Chicken Egg

A chicken egg is a kind of seasoned egg.
The description is "An egg treated with special poultry seasoning to hatch a Chick."

Volume - Baby Animals

to say sad_baby_animal: say "'[one of]Don't like it here. It's smelly.[or]I don't like this. You promised me fun. This isn't fun.[or]I don't wanna be here.[or]I'm BORED.[or]Take me away from here, it's lame. I hate it.[or]This is boring, why did you bring me here? It's lame.[or]What is this place anyway, it's rubbish, take me somewhere else.[or]Where ARE we? It's Lame-o. LAME-O.[at random]'"

[TODO: if fed in the inventory, a fully-fed animal will automatically drop to the ground]

Book - Caterpillar

A caterpillar is a kind of animal.
The description is "A proto-Butterfly. It needs to be fed to blossom into a full-Butterfly."

One butterfly is part of every caterpillar.

Chapter - Feeding

A bubble is a kind of thing.
A green leaf is a kind of thing.

Check feeding something to a caterpillar:
	if the noun is not a bubble and the noun is not a green leaf:
		say "Caterpillars like leaves and things that pop." instead.

Carry out feeding something to a caterpillar (called C):
	say "You feed [a noun] to the caterpillar.";
	say "It grew into a Butterfly!";
	[replace caterpillar with butterfly]

Check feeding something to a sad caterpillar:
	say "The caterpillar is too busy complaining to eat." instead.

Book - Chick

A chick is a kind of animal.
The description is "A wide-eyed chick, fresh from the egg. It needs grain in order to reach full chickenhood."

One chicken is part of every chick.

Chapter - Feeding

A chick has a number called feed_count.

Check feeding something to a chick:
	if the noun is not a grain:
		say "Chicks need to eat grain to grow." instead.

Carry out feeding something to a chick (called C):
	say "You feed [a noun] to the chick.";
	increase feed_count of C by 1;
	if feed_count is 10:
		say "It grew into a Chicken!"
		[replace chick with chicken]

Check feeding something to a sad chick:
	say "This chick is off its food in these uncomfortable surroundings!" instead.

Chapter - Smiling

Smiling at is an action applying to one thing.
Understand "smile at [something]" as smiling at.

Carry out smiling at: say "You smile at [the noun]."

Instead of smiling at a chick: 
	say "You smiled at a Chick. The chick stares back at you with its unblinking little eyes. For such a small creature, this is surprisingly unnerving.";
	decrease player's mood by 3.

Instead of smiling at a sad chick:
	say "The chick's unblinking gaze conveys its extreme distaste for its surroundings. You feel embarrassed for smiling at it.";
	decrease player's mood by 5.

Book - Piglet

A piglet is a kind of animal.
The description is "One wiggly little piggly. He wants to turn into a big pig. Feed him nourishing plant-y food to help him grow."

One piggy is part of every piglet.

Chapter - Feeding

A piglet has a number called feed_count.

Check feeding something to a sad piglet:
	say "This place seems to give this piglet the howling fantods, and it refuses food." instead.

Check feeding something to a piglet:
	if the noun is not a crop, say "Piggies will eat just about anything that grows in the ground." instead.

Carry out feeding something to a piglet (called P):
	say "You feed [a noun] to the piglet.";
	increase feed_count of P by 1;
	if feed_count is 3:
		say "It grew into a Piggy!"
		[replace piglet with piggy]

Chapter - Humming

Understand the command "hum" as "sing".

Carry out singing to a piglet:
	say "You hum an off-key hum. Fortunately, piggies are tone deaf. The piglet squirms delightedly. You squirm a little bit, too."

After singing to a piglet:
	decrease player's energy by 2;
	increase player's mood by 2.

Instead of singing to a sad piglet:
	say "You hum an off-key hum, but the piglet is too unhappy here to notice. Its misery is contagious.";
	decrease the player's mood by 2;
	decrease the player's energy by 2.
