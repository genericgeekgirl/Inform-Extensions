Food by Helga begins here.

Use authorial modesty.

Volume - Food

A food is a kind of thing. A food is edible. Some kinds of foods are defined by the Table of Food Items.
A food has a number called energy.

A crop is a kind of food.

Book - Consumption

Understand the command "lick" as "taste".
Understand the command "sniff" as something new.
Understand the command "sniff" as "smell".

Before eating a food (called F):
	increase the player's energy by the energy of F;

After eating a food (called F):
	say "You ate the [F]. Mmm.";
	record "Kept your energy up" as achieved.

Before eating a food for the first time:
	say "[as the parser]Eating food gives you energy, and energy keeps you alive.[as normal]"

Check drinking a food:
	say "Blenders haven't been implemented yet. You'll need to EAT that instead." instead.
        
Book - Food Items
        
Table of Food Items
Food	Description	Energy	Plural
meaty sammich	"A basic bun 'n' meat sammich."	5	"meaty sammiches"
cheezy sammich	"An easy, pleasey, cheezy sammich."	5	"cheezy sammiches"
lazy salad	"Sliced tomatoes and cheese. It doesn't get much lazier than a lazy salad."	5
common crudite	"Everyday crudites served in an easy-to-carry cup."	5
flummery	"Few things in this life are as tasty as a masterfully prepared flummery. 'Just like Mom used to make!' you might say. If you had a mom, that is."	5	"flummeries"
bun	"A nice round bun."	1

A tomato is a kind of crop. The plural of tomato is tomatoes.
The description is "A ripe, heirloom-quality tomato.[first time][paragraph break][as the parser]Crop vegetables can be used for cooking, but you can also feed them to piggies. Piggies need to eat in order to produce meat.[as normal][only]".
The energy of a tomato is 5.

Volume - Drinks

A drink is a kind of thing. Some kinds of drinks are defined by the Table of Beverages.
A drink has a number called mood.
A drink has a number called energy. Energy is usually 0.

Book - Consumption

Instead of drinking a drink (called D):
	increase the player's mood by the mood of D;
	increase the player's energy by the energy of D;
	say "You drank [a D]. Yum.";
	remove D from play;
	record "Kept your mood up" as achieved.

Instead of eating a drink:
	try drinking the noun.

Before drinking a drink for the first time:
	say "[as the parser]Drinks give you mood. When you're happy, the Giants are happy, and you earn more Imagination. So keep your mood up.[as normal]"

Book - Beverages

Table of Beverages
Drink	Description	Mood
spicy grog	"A tall glass of exceedingly spicy grog."	30
fruity juice	"A glass of nigh-ambrosial fruit juice."	20

Volume - Animal Resources

Chapter - Meat

A meat is a kind of food. The description is "A simple meat." The energy of meat is 10.

One meat is part of every piggy.

Chapter - Grain

A grain is a kind of food. The description is "Some plain grain." The energy of grain is 1.

One grain is part of every chicken.

Chapter - Butterfly Milk

A milk is a kind of drink. The printed name is "butterfly milk". Understand "butterfly milk" as milk.
The description is "A vial of butterfly milk. It has the tingly effervescence of a thousand tiny butterfly farts."
The mood of milk is 6.

One milk is part of every butterfly.

Check smelling a milk:
	if player's mood > 41:
		say "Sniffing butterfly milk only works when you're feeling down." instead.

Instead of smelling a milk:
	say "Butterfly milk smells like perfume from France. You experience a momentary surge of elation.";
	increase player's mood by 12.

Volume - Dairy Products

Shaking is an action applying to one thing.
Understand "shake [something]" as shaking.
Carry out shaking: say "You shake it to the right. You shake it to the left. Nothing happens."

Instead of shaking a milk (called B):
	say "You shake the butterfly milk vigorously. Butterfly butter!";
	decrease player's energy by 2;
	remove the B from play;
	let C be a random butter that is in staging;
	let the new butter be a new object cloned from C;
	now the player carries the new butter.

Chapter - Butterfly Butter

A butter is a kind of food. The printed name is "butterfly butter". Understand "butterfly butter" as butter.
The description is "Butterfly butter might seem like an odd thing, but it is used in many delicious cooking recipes."

Understand the command "compress" as "squeeze".

After squeezing a butter (called B):
	say "You squeeze the butterfly butter with all your might and cheese appears!";
	decrease the player's energy by 5;
	remove the B from play;
	let C be a random basic cheese that is in staging;
	let the new basic cheese be a new object cloned from C;
	now the player carries the new basic cheese.

Chapter - Cheese

A basic cheese is a kind of food. The printed name is "cheese". The description is "A nice wedge of holey cheese[first time].[paragraph break][as the parser]Butterfly milk can be shaken to create butter, which can be compressed into cheese, which can be aged..[only][as normal]."
The energy of basic cheese is 15.

Aging is an action applying to one thing.
Understand "age [something]" as aging.
Carry out aging: say "You can't age that!"

Instead of aging a basic cheese (called C):
	say "You put the cheese in your pocket for a while and it ages nicely. It left a bit of a smell in your pocket though.";
	decrease player's energy by 5;
	decrease player's mood by 5;
	remove the C from play;
	let D be a random stinky cheese 1 that is in staging;
	let the new stinky cheese 1 be a new object cloned from D;
	now the player carries the new stinky cheese 1.

Book - Stinky Cheese

A stinky cheese 1 is a kind of food. The printed name is "stinky cheese".
The description is "A lump of cheese that's been left to stand around for a while. It's what the French call 'ripe'. You could age it longer, but glory only knows what the French would call it then."
The energy of stinky cheese 1 is 21.

Instead of smelling a stinky cheese 1:
	say "Yep. That's a stinky cheese all right."

Instead of aging a stinky cheese 1 (called C):
	say "If you concentrate really hard on it, the cheese does indeed age.";
	decrease player's energy by 10;
	remove C from play;
	let D be a random stinky cheese 2 that is in staging;
	let the new stinky cheese 2 be a new object cloned from D;
	now the player carries the new stinky cheese 2.

After tasting a stinky cheese 1:
	say "Awesome. Now you have stink-tongue.";
	decrease player's mood by 20.

After eating a stinky cheese 1: 
	say "Stinky Cheese? Not bad. Would have been better with some stinky crackers, though.";

Book - Very Stinky Cheese

A stinky cheese 2 is a kind of food. The printed name is "very stinky cheese".
The description is "Smelling like a manatee bathed in celery juice and old surgical stockings, goodness knows what would happen if you aged this connoisseurial cheese any longer. You could give it a go, though..."
The energy of stinky cheese 2 is 27.

Instead of aging a stinky cheese 2 (called C):
	say "Wow, is that ever draining. But the cheese [italic type]is[roman type] visibly aged.";
	decrease player's mood by 20;
	decrease player's energy by 15;
	remove C from play;
	let D be a random stinky cheese 3 that is in staging;
	let the new stinky cheese 3 be a new object cloned from D;
	now the player carries the new stinky cheese 3.

Instead of smelling a stinky cheese 2:
	say "Phew. That [italic type]is[roman type] very stinky."

After eating a stinky cheese 2:
	say "After all the hubbub about the very stinky cheese, its actual stinkiness is a little anti-climactic."

Book - Very, Very Stinky Cheese

A stinky cheese 3 is a kind of food. The printed name is "very, very stinky cheese".
The description is "This is the very, very stinkiest cheese you've ever seen, or it would be if you could see through the thick veil of tears it's inducing. You can't make this any stinkier. It wouldn't be fair to everyone else."
The energy of stinky cheese 3 is 33.

Instead of smelling a stinky cheese 3:
	say "At first sniff, this is one of the worst olfactory experiences of your life. On your second sniff, you experience an epiphany, which you forget almost immediately.";
	increase player's mood by 50;
	decrease player's energy by 50.

Instead of aging a stinky cheese 3:
	say "You couldn't possibly age this cheese any more."

After eating stinky cheese 3:
	say "In addition to dazzling your friends with your intestinal fortitude, you also reap the very, very stinky cheese's bounteous nutritional benefits."

After touching the stinky cheese 3:
	say "That was not a good idea. It's going to take a while for that finger-stink to wear off.";
	decrease player's mood by 50.

Volume - Cooking

EZ Cooking is a scene.
EZ Cooking begins when the location is Shimla Shack for the first time.
EZ Cooking ends when a lazy salad has been handled and a cheezy sammich has been handled and a meaty sammich has been handled.

Food-count is a number that varies. Food-count is 0.

When EZ Cooking ends:
record "Completed EZ Cooking" as achieved;
if sound-allowed is true, play sound of achievement in foreground;
say "[italic type]You have gained the EZ Cooking skill![roman type]".

Book - Utensils

A utensil is a kind of thing.

A knifen board is a utensil. The description is "A good knife and cutting board. They can be used to make simple foods[first time].[paragraph break][as the parser]You can type RECIPES at any time to see what recipes you know[as normal][only]." Understand "cutting board" as knifen board.

Instead of using the knifen board: try requesting recipes.
Before using the knifen board when the knifen board is not enclosed by the player: try taking the knifen board.

Understand the command "cut" as something new.
Understand "cut [something]" as a mistake ("You don't need to do that.")

One lazy salad, one meaty sammich, one cheezy sammich are part of the knifen board.

Book - Recipes

Table of Recipes
Topic	Recipe	Known	Tool	Ingredients
"cheezy sammich" or "cheezy" or "cheesy" or "cheesy sammich"	"Cheezy Sammich"	1	Knifen Board	{"a bun", "a cheese"}
"lazy salad" or "lazy" or "salad"	"Lazy Salad"	1	Knifen Board	{"a tomato", "a cheese"}
"meaty sammich" or "meaty"	"Meaty Sammich"	1	Knifen Board	{"a bun", "a meat"}

Requesting recipes is an action applying to nothing.
Understand "RECIPES" and "RECIPE" as requesting recipes.

Check requesting recipes:
if the player does not enclose a utensil, say "You are not carrying any cooking implements." instead.

Carry out requesting recipes:
	If the player encloses the Knifen Board:
		say "You know the following recipes for your Knifen Board:";
		repeat through the Table of Recipes:
			if the known entry is 1 and the tool entry is Knifen Board:
				say "[line break][recipe entry] ([ingredients entry])";
		say "[first time][paragraph break][as the parser]What can you PREPARE with the ingredients you have available?[as normal][only][line break]".

Book - Preparing Food

Preparing is an action applying to one topic.
Understand "prepare [text]" as preparing.

Understand the command "make" as "prepare".

Preparing Nothing is an action applying to nothing.
Understand "prepare" as preparing nothing.

Carry out preparing nothing:
	now current question is "What would you like to prepare?";
	let L be a list of texts;
	repeat through the Table of Recipes:
		if the known entry is 1:
			add recipe entry to L;
	add "Nevermind" to L;
	now current question menu is L;
	ask a closed question, in menu mode.

A menu question rule (this is the prepare recipe rule):
	let temp be the number understood;
	let recipe be entry temp in the current question menu;
	if recipe matches the text "Nevermind":
		say "Ok. Maybe later.";
	otherwise if recipe matches the text "Cheezy Sammich":
		try preparing "cheezy sammich";
	otherwise if recipe matches the text "Meaty Sammich":
		try preparing "meaty sammich";
	otherwise if recipe matches the text "Lazy Salad":
		try preparing "lazy salad";
	exit.
        
[TODO: How can I make this work across the board?]

Check preparing:
	if the topic understood is a topic listed in the Table of Recipes:
		if the known entry is 0, say "You don't know how to prepare that yet." instead;
		if the player does not enclose the tool entry, say "You need [a tool entry] to prepare that recipe." instead;
		repeat with ingredient running through the ingredients entry:
			let found be 0;
			repeat with object running through the list of things enclosed by the player:
				if "[a object]" exactly matches the text "[ingredient]":
					now found is 1;
			if found is 0, say "You will need [ingredient] to make this recipe." instead;
	otherwise:
		say "You don't know how to prepare that (or you need to be more specific)." instead;

Check preparing nothing:
	if the player does not enclose a utensil:
		say "You are not carrying any cooking implements." instead.
                
Carry out preparing:
	if the topic understood is a topic listed in the Table of Recipes:
		repeat with ingredient running through the ingredients entry:
			let found be 0;
			repeat with object running through the list of things enclosed by the player:
				if "[a object]" exactly matches the text "[ingredient]" and found is 0:
					remove object from play;
					now found is 1;                                                
		repeat with recipe running through the list of things that are part of the knifen board:
			if "[recipe]" matches the text "[recipe entry]", case insensitively:
				let the new item be a new object cloned from the recipe;
				now the player carries the new item;
		say "Nice! You made a [recipe entry]. You used [ingredients entry]."

Food ends here.