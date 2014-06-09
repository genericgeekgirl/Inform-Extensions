Animals by Zzybzfrx begins here.

Use authorial modesty.

[General verbs: Talk to]
[foxes can only be brushed]
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
[Block picking up most animals]

Feeding it to is an action applying to two things.

Volume - Batterfly

A batterfly is a kind of animal.
The description is "Found in caverns (where the perpetual darkness may account for their pissy mood) it has been shown that Batterflies, when fed at one end, produce useful agricultural materials from the other."
The plural of batterfly is batterflies.

Understand "feed [something] to [batterfly]" as feeding it to.

A batterfly has a number called BC_Counter. BC_Counter is usually 0.

[1,2,3 guano]

Instead of feeding something to a batterfly (called B):
	Increase the BC_Counter of B by the base_cost of the noun;
	if the BC_Counter of B is less than 15:
		say "[one of]Nope. No poop.[or]*Unnngh* Nope.[or]For that? nothing.[or]My stomach is not even full.[or]I don't really need to go yet.[at random]";
	otherwise if the BC_Counter of B is less than 50:
		say "[one of]poop[or]*heaving sigh*[or]this is all you deserve[or]small comfort for you[or]a little gift from the darkness[at random]";
		now the BC_Counter of B is 0;
	otherwise if the BC_Counter of B is less than 100:
		say "[one of]poop poop[or]*deep sigh*[or]this is all you're getting[or]a measure of comfort for your trouble, yes?[or]a Tulpan-sized guanoparcel from the deep[at random]";
		now the BC_Counter of B is 0;
	otherwise:
		say "[one of]happy poopday. poop poop poop.[or]*sigh*[or]this is all i have[or]make yourself comfortable with this[or]giant guanogifts for your dungeonic overkindness[at random]";
		now the BC_Counter of B is 0;

Volume - Butterfly

A butterfly is a kind of animal.
The description is "A morphously blue butterfly. As any fool knows, butter can't fly, but milk apparently can. Butterflies may need a little kindness (or massage) before they give up the milk, but milk can always be turned into butter… and cheese… and who knows what else?"
The plural of butterfly is butterflies.

A butterfly has a number called lifepoints. Lifepoints is usually 400.

A butterfly can be ready. A butterfly is usually not ready.

[Verbs: Talk to]

Singing to is an action applying to one thing.
Understand "sing to [butterfly]" as singing to.

Carry out singing to a butterfly:
say "[one of]A pig in the hand is worth two in the poke.[or]After you tend a weedy patch, plant something quickly, or all your efforts will be for naught.[or]Cherries are the root of all fruits[or]Cosma does not remember the butterflies, but we remember her.[or]Don't sweat the petty things. Also, don't pet the sweaty things.[or]Don't take any wooden coins.[or]Have you been hoeing weedy patches to no avail? Soil Appreciation will help you.[or]If a plant isn't hungry, don't feed it, silly.[or]If you want to choose what kinds of beans to plant, you're going to need a Bean Seasoner.[or]Now is the Kukubee Winter of our discontent.[or]Of course the chicken came before the egg. That's why it crossed the road.[or]What is the sound of one piggy napping?[or]You'll have more luck nibbling piggies if you pet and feed them first.[cycling]"

Understand the command "massage" as "touch".

Check touching a butterfly:
	if the player does not carry butterfly_lotion:
		say "The butterfly says, '[one of]Ow! Why not just rub me with gravel?![or]OMFG! 2 DRY! UR rubbish.[or]Ooo, ow, no, bad, stoppit.[or]Jeez, if you can’t do it properly…[or]Git ur dry hands off! Yow![at random].'";
		say "Massaging a butterfly without lotion? That's not nice. It's too dry. Go find some lotion.";
		stop the action.

Milking is an action applying to one thing.
Understand "milk [butterfly]" as milking.

Check milking a butterfly (called B):
if B is not ready, say "What? No warmup? No preamble? You just walk up to a butterfly with your clammy hands and try to milk it? You have a lot to learn about charming butterflies." instead.

Carry out milking a butterfly (called B):
say "The butterfly responds to your firm yet gentle touch by excreting several drops of its most precious essence. Conveniently, the butterfly also has a vial handy for holding said essence.";
say "The butterfly says, '[one of]Whoa milky![or]Here: milx[or]Milx 4 U[or]Got milx?[or]Milky milky[or]Here. S’good for growing teeth and stuff. And tails.[at random]'";
now the player carries a random butterfly milk that is off-stage;
now B is not ready.

Instead of touching a butterfly (called B):
say "The butterfly says, '[one of]Mmmf. Not bad.[or]Massage ok. ‘Spose.[or]Like, whatever[or]K, thanx.[at random]'";
now B is ready.

Book - Responses

To say butterfly_ascend_to_higher_plain: say "[one of]k flutterin off now. bai![or]k bai!!!!1![or]g2g byeeeeeee!!!!!!!![or]<3 u bai!!! have a nice life!!![or]{{{{hugz}}}}} byeeeee!!![or]No moar milx! Dyin now! Yay bai!![or]OMG back 2 Cosma!!! I <3 U!!![or]g2g![or]Done?! I won?!? YAY!!![or]l8rs! /Nevrs! Bai bai bai 4eva!!!!!!!![at random]"

To say butterfly_massage_ak2_ak3: say "[one of]Yeah. So can I go hang with my butterfriends now?[or]Unmf[or]Ok, so, great massage. Can I, like, go?[or]Yeah, so, thanks. I guess.[or]Yeah, so-so, whatevs, k bai.[at random]"

To say butterfly_massage_ak4_ak5: say "[one of]So um I dunno? Like, I guess I liked that? Kinda?[or]Yeah, so that was like, not bad? I suppose? Thanks?[or]So, like, that was quite good?[or]I mean, whatever and everything? But that was ok and stuff?[or]Well, totally not unpleasant? So yeah? whatever?[or]Like, whatever?…[or]Yeah, so, um. Ok? Thanks?[or]Yeah? So nice massage? Whatever?[or]So, I mean, the massage? It was, like, ok? Thanks?[or]Right, so I liked your massage? So, like, thanks?[at random]"

To say butterfly_massage_ak6_ak7: say "[one of]Thnx, Bigthing.[or]OMG ur like, gr8[or]AWSUM msrg.[or]i &lt3 u + ur msrgs[or]K thnx ttyl :)[or]Msrg! I &lt3 msrgs! \o/[or]\o/[or]LOL! Ur, like, all msrgy![or]i &lt333 u!!!!1![or]Thnx![or]K THNX 4 MSRG BAI![or]Ur nice 4 msrgin me. xoxo[or]OMG UR AWSM! \o/[or]&lt333 msrgs[or]Yay thnx bigthing. ttyl…[at random]"

To say butterfly_milk_ak2_ak3: say "[one of]I got some containers too![or]OMG you again! Take milk. K?[or]There. Milx. Happy? Bai.[or]UR OK. U can has milx.[or]K, so I has milx. You wants?[or]Here! Made you beer! I kiddin’. Is milx.[at random]"

To say butterfly_milk_ak4_ak5: say "[one of]So you wanted milk, yeah? Like, whatever?[or]Yeah, like, you can have this milk? Like, totally?[or]Whatever, yeah? So I made you milk?[or]Right, so, like, milk? There? Have it?[or]So like you can have milk again sometime? Or whatever?[or]Right, so here's your milk?[or]Alright so yeah, whatever? Here's your milk?[or]So like, somehow you milked me, and I made this?[or]Hey, you want this? I guess? 'Cos you milked me?[or]Whatever and that, but take this milk, yeah?[at random]"

To say butterfly_milk_ak6_ak7: say "[one of]OMG I TOTES DID U MILX![or]i got milx 4 u!!!!!1!![or]Milx r awsum! U r awsum![or]i &lt3 u! milx! ttyl!!!1![or]gt milx? Ys! ROFL!!!!1!![or]You needs milx! You totes HAZ milx!!![or]1t milx? Gotz milx! YAY![or]I maded milx.[or]Look @ my milx! U can haz!!!!!!!!!![or]U &lt3 milx? I &lt3 u!!![or]YAY I MADEZ YOU MILX!!!1![or]Here iz milx! l8r!!!![or]U likez ur milx? YAY! Bai!!![or]All theez milxez r 4 u! &lt3333[or]Milx! Enjoi! xoxo[at random]"

Volume - Chicken

A chicken is a kind of animal.
The description is "An easily agitated member of the poultry classes. Given to flights of fearful fantasy, high-pitched paranoia and, frankly, short distances, chickens are a reliable source of grain (it's said that they keep it in the hot pockets under their wings)."

A chicken has a number called lifepoints. Lifepoints is usually 2000.
A chicken can be incubating. A chicken is usually not incubating.

[verbs: incubate]

Instead of squeezing or touching a chicken:
say "[one of]Yeeeeeeeeeeeeeks![or]Oh my beak and giblets, you scared me![or]You made me drop my GRAIN, squeezefiend![or]Squeeze. Grain. Grain. Squeeze. It's a chicken's life.[or]BUK! Take the grain! Take it![at random]".

Book - Responses

To say chicken_ascend_to_higher_plain: say "[one of]Next time, I'm coming back as a piggy![or]Peace! Merciful, unsqueezable peace. Ah…[or]Thanks! Released from this squeezy, egg-sitty toil. Finally.[or]So long a life, so many squeezes, so many eggs.[or]Is it over? Really? Oh, thank you. You, I like.[or]I'll miss the squeezes. I suppose.[or]Goodbye, cruel-ish world.[or]That was it? Life? Meh. Could've been worse.[or]I get to go?!? Happy! I'm happy! This is what happy must be like![or]I've no more grain to give. My last egg is sat. Now, I rest.[at random]"

To say incubation_complete: say "[one of]Ping![or]Done! What were you expecting, 3 1/2 minutes?[or]Buk! It bit my butt! You owe me a beer.[or]Here. Another new life. A miracle. Thank me later.[or]Ta DA![at random]"

To say incubation_start: say "[one of]Now the chicken is superior, eh? Wait here ONE MINUTE and I'll give it back.[or]No squeezing while I sit? Ok deal. But, you can't leave for a whole minute. Stay, if you want your animal.[or]Well, comfortable it isn't... but ok. Deal is that you have to wait a full minute.[or]I'm egg-static to be of service. That was sarcasm. But whatever ... if you stick around for a minute I'll get 'er done.[or]At least you appreciate my warm underfeatheredside.  Love it! Also, stick around for sixty seconds or lose it![at random]"

To say squeeze_ak2_ak3: say "[one of]Again with the squeezing?!?[or]So take it - I didn't want that grain anyway.[or]Squeezed again? Oy. Such imagination you show.[or]What IS this, the world chicken wrestling featheration?[or]One day, chickens squeeze YOU.[or]Another squeeze? Really?!?[or]HELP! Chickenmuggings![or]Fine. Take it. And enjoy, grain-finagler.[or]Buk-buk-buk. That what you want to hear?[or]Squeeze squeeze squeeze squeeze squeeze. Buk.[at random]"

To say squeeze_ak4_ak5: say "[one of]Not so hard, you'll tangle my intestinal noodles.[or]Yes, because chickens don't need personal space too? Pah.[or]Consider my feathers ruffled. Buk.[or]Chicken-ruffler! Alarm! Alarm![or]Always with the squeezing![or]Oh look. It's Chicken Wrestler. Again.[or]Rummage all you like, I've only got grain.[or]Grain! Grain if you'll stop![or]Buk! Off! Get off! Buk buk.[or]Do YOU like to be squeezed by random strangers? Hmn?[at random]"

To say squeeze_ak6_ak7: say "[one of]Oooh, CHASE ME![or]Chicken-botherer begone! Take the grain already![or]Consider me squeezed. Squoozed? Squzz?[or]Psssst! I don't mind really.[or]One day: revenge. Until that day: grain.[or]Buy grain on auction, maybe? No? Just squeezing? OK![or]Oh go on then: one more squeeze. Hic![at random]"

To say chicken-revived: say "[one of]Thanks be to [player's name] for reviving me. It's about time.[or]You're a good Glitch, [player's name]. You give them all a good name.[or]The chickens thank you, [player's name]. You, we like.[cycling]"

To say chicken-rooked: say "[one of]
I told you! I told you this would happen. I've been rooked. HELP!!![or]Don't just stand there! Help why don't you?! I'm ROOKED here![or]ROOKED!!! FOR THE LOVE OF THE GIANT DO SOMETHING![or]My gizzards are falling out! HELP! Revive me![or]My wings! So hot! So crispy! HELP ME![cycling]"

Volume - Crab

A crab is a kind of animal.
The description is "Anyone knows music makes crabs happy, but it takes an expert DJ to satiate both the appetite for variety and yen for classic tunes it desires. The tunesmith who can play a full array of songs will be richly rewarded."

A crab can be flattered. A crab is usually not flattered.

[verbs: hug, flatter, pinch, insult]

Volume - Fox

A fox is a kind of animal.
The description is "The sly, cunning, quick brown fox has a tail full of fibers perfect for spinning. Shifting position quickly, you can rely on a fox to be fast-paced, slippery and hard to pin down, they care deeply about some things (getting as much bait as they can, giving up as few tail hairs as possible to society) but interact very little with the real world."
The plural of fox is foxes.

[verb: brush]

To say brushed: say "[one of]Oof! You got me![or]I was quick, you were quicker![at random]"

Volume - Piggy

A piggy is a kind of animal. Understand "pig" as a piggy.
The description is "One happy little porcine with a laidback attitude to life and a lot of love to give. Whether wild or domestic, the piggy gives wisdom from one end, useful gardening supplies from the other, and delicious meat from everywhere inbetween."
The plural of piggy is piggies.

A piggy has a number called hungerpoints. Hungerpoints is usually 0.
[0 is satiated, 10 is about to die; base-cost of at least 5 resets hunger to 0; nibbling increases hunger; hunger over 4 cannot be nibbled.]
[If there is a Tree on the street, they will feed off the tree instead (shrinking the tree one growth level)]
[Dead pigs leave 10 meet and a plop containing random seeds]

A piggy can be ready. A piggy is usually not ready.

[Verbs: pet, nibble, feed]

Understand the command "pet" as touch.
Understand the command "nibble" as eat.

Understand "feed [something] to [piggy]" as feeding it to.

Instead of feeding something to a piggy:
say "[one of]Nom nom burp nom excuse me dude nom[or]Pigs are omnivores, right? Cuz I'm eatin' ALLa this.[or]Ahh. Wait, did you want to go halvsies?[or]That'll do, dude. That'll do.[or]I like you the most. Well, second-most (after your food).[or]*Buuuuurrrp*[or]*snurfle snurfle snufle snurfle*[or]Can't. Talk. Eating. Laters.[or]Piggy picnic![or]Sweet snackage, chum.[or]Super-snafflable scran, man.[or]Wait, Scooby Snacks do direct delivery? Awsum.[or]So. Full. Well, maybe a *little* more....[or]Nom nom nom.[or]You're my favourite, friend. Loves.[at random]"

[if noun is a crop, produce one packet of seeds per three items]

Instead of touching a piggy (called P):
say "[one of]Mmm... I like that![or]Respect the pot belly, dude![or]You've got piggy-petter promise, sparky.[or]Niiiiiiiiiiiiiiiiiice[or]Work on that piggyrub: you and I could be friends.[at random]";
now P is ready.

Check eating a piggy (called P):
if P is not ready, say "[one of]Gnarly nibble' wipeout!  (That means you failed, friend)[or]Ain't no such thing as a free lunch, dude.[or]No love, no nibblin'. I ain't no fool.[or]Don't be rash. No rashers for the rash.[or]Finagle my porkloin without even a cuddle first? No way![at random]"

Instead of eating a piggy (called P):
say "[one of]Meat, eh? Well, only because I like you...[or]Some of my finest nibbly bits I give to you. Nib well.[or]You wanna piece of ME?!? Oh, ok then.[or]Take, eat, don't think about it too hard...[or]Mi cárnico es su cárnico, amigo.[at random]";
now the player carries a random meat that is off-stage;
now P is not ready.

Book - Responses

To say pig_revived: say "[one of]YAY! Like, totally revived from my gnarly rooking, thanks to [player's name][or]Zoink! [Player's name] saved the day! I am now totally unrookified, man[or]You're the Tulpan, [player's name]! I'm totally revived. Party on[at random]!"

To say pig_rooked: say "[one of]Oooh. Dude, this sucks. Someone help me! Like, seriously![or]Gnarly Rook action! Achy hooves, tender loins! Help.[or]Oh man, this Rook thing is totally bogus.[or]Bro', my tiny shanks are porked. Do something, dude![or]Seriously bummed out, dude. Been rooked. Help.[at random]"

To say pet_ak2_ak3: say "[one of]Wicked good petting action.[or]Like it. Firm Hand, no tickling. Nice work.[or]Swanky flankpatting. My flanks thank you.[or]You've been practicing. I can tell.[or]Pet early, pet often, pet just like that.[or]Literally awesome. Literally.[or]Sweeeeeeet.[or]Mhm. I'm feelin' you, bud.[or]*Satisfied grunty noises*[or]Nice work, friend.[at random]"

To say pet_ak4_ak5: say "[one of]RADICAL, DUDE![or]Duuuuude. I'm, like super-relaxed.[or]You pet like a pro, bro.[or]I don't think any pig has ever been this relaxed.[or]So relaxed. You should probably know I fart when I'm relaxed.[or]Super-sick petting action, pal.[or]Dude, you literally could not suck less at this.[or]Sweet, dude. Sweet.[or]You're some handy dandler, I'll give you that.[or]A firm hand cures all gnarliness. Yes.[at random]"

To say nibble_ak4_ak5: say "[one of]Here you go, dude - chop chop.[or]Your supertight nibblatory skills impress me.[or]A little more off the side? Sweet, dude.[or]You want cooking suggestions? I say yes: Cook.[or]You keep me sweet, you get your meat. Dude that rhymes![or]This enough?[or]Take meat, this is my booty, just for you.[or]Hitting you with the protein re-up, chum! BAM![or]You are what you eat, friend. And so am I.[at random]"

To say pet_ak6_ak7: say "[one of]I keeeeeeessss you!!![or]Damn, you's a petsy Tulpan![or]Petting soothes the savage piggy. Rowr! Oink.[or]Superhot stroking, Strokey McPetster![or]My flanks are crackling under your electric touch.[or]Damn, dude! You're AWESOME.[or]Hot stuff, Petsy McStrokateer![or]And they shall call you El Petterino.[or]YEAH!!![or]Now that's what I call petting, pigbuddy[or]You the petmeister, dude. Or perhaps just The Dude.[or]My hocks shiver at your sweet dandling-skills, dude[or]Squeeeee-hee-hee![or]Petty on, dude![or]Squeeeeee! And other fanpig noises![at random]"

To say nibble_ak6_ak7: say "[one of]I've got plenty more where that came from, friend.[or]Mucho meat for you, matey[or]Come back soon, bud. You're superawesome.[or]This meat? The good stuff. Tell your friends.[or]I crown you Top Nibbleteer. I crown you with meat.[or]You're hamming it up today, chum.[or]Nice nibbling, nimble-gnashers.[or]Meat to please you, my friend.[or]I have to admire your passion for pig, dude.[or]Mi carne es su carne, amigo.[or]The meatier the merrier. Yes, it's a phrase.[or]Boom! Daily hot meat injection straight to your bag![or]You're now mighty, mighty meaty, matey.[or]Gnarlatious nibbling, dude![or]Mondo meat action, El Nibblino[at random]"

To say nibble_ak2_ak3: say "[one of]Hey! Careful where you put those incisors, pal[or]Take, eat - I'm great with cheese. TMI?[or]Mama said: Life is like a box of meat. Guess what you're getting?[or]Hey leave a little! Don't be piggy. That's my job.[or]Don't eat it all at once, nibblemeister.[or]Pleased to meat you, dude. Heh.[or]Meat, huh? Only 'cause you're sweet.[or]You'll eat well today, friend.[or]Here's your pocket of protein, chum.[or]Happy meatyday, dude[at random]"

To say sad_piggy: say "[one of]I don't wanna be here.[or]I'm BORED.[or]I don't like this. You promised me fun. This isn't fun.[or]What is this place anyway, it's rubbish, take me somewhere else.[or]Take me away from here, it's lame. I hate it.[or]Don't like it here. It's smelly.[or]This is boring, why did you bring me here? It's lame.[or]Where ARE we? It's Lame-o. LAME-O.[at random]"

Volume - Salmon

A salmon fish is a kind of animal. The printed name is "salmon".
The description is "One fresh, wild, slinky, slippery salmon. Some say there is a soul of a Glitch contained within each salmon. In which case, souls taste delicious when stuffed in your pocket then grilled up on a nice rustic plank."
The plural of salmon fish is salmen.

Pocketing is an action applying to one thing.
Understand "pocket [salmon fish]" as pocketing.

Carry out pocketing:
	let N be a random number between 1 and 10;
	if N is 1:
		say "You have caught a... boot?!?";
		now the player carries a random boot that is off-stage;
	otherwise:
		say "You pocket the salmon.";
		now the player carries a random pocket salmon that is off-stage.

Animals ends here.
