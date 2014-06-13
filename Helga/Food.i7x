﻿Food by Helga begins here.

Use authorial modesty.

Volume - Food

A food is a kind of thing. A food is edible. Some kinds of foods are defined by the Table of Food Items.
A crop is a kind of food.

Understand the command "lick" as "taste".
Understand the command "sniff" as something new.
Understand the command "sniff" as "smell".

After eating a food (called F):
increase the player's energy by the energy of F;
say "You ate the [F]. Mmm.[paragraph break][italic type]+[energy of F] Energy[roman type][paragraph break]"

Before eating a food for the first time: record "Kept your energy up" as achieved.

Table of Food Items
Food	Description	Energy	Plural
meaty sammich	"A basic bun 'n' meat sammich."	5	"meaty sammiches"
cheezy sammich	"An easy, pleasey, cheezy sammich."	5	"cheezy sammiches"
lazy salad	"Sliced tomatoes and cheese. It doesn't get much lazier than a lazy salad."	5
common crudite	"Everyday crudites served in an easy-to-carry cup."	5
flummery	"Few things in this life are as tasty as a masterfully prepared flummery. 'Just like Mom used to make!' you might say. If you had a mom, that is."	5	"flummeries"
bun	"A nice round bun."	1

A tomato is a kind of crop. The plural of tomato is tomatoes. The description is "A ripe, heirloom-quality tomato.[first time][paragraph break][as the parser]Crop vegetables can be used for cooking, but you can also FEED them TO piggies. Piggies need to eat in order to produce meat.[as normal][only]"

Six tomatoes are carried by the player.

Instead of drinking a food:
try eating the noun instead.

Volume - Drink

A drink is a kind of thing. Some kinds of drinks are defined by the Table of Beverages.

Table of Beverages
Drink	Description	Mood
spicy grog	"A tall glass of exceedingly spicy grog."	30
fruity juice	"A glass of nigh-ambrosial fruit juice."	20

Before drinking a drink for the first time: record "Kept your mood up" as achieved.

Instead of drinking a drink (called D):
increase the player's mood by the mood of D;
say "You drank [a D]. Yum.[paragraph break][italic type]+[mood of D] Mood[roman type][paragraph break]";
remove D from play.

Instead of eating a drink:
try drinking the noun instead.

Volume - Dairy Products

Chapter - Butterfly Milk

A milk is a kind of drink. The printed name is "butterfly milk". Understand "butterfly milk" as milk.
The description is "A vial of butterfly milk. It has the tingly effervescence of a thousand tiny butterfly farts.[first time][paragraph break][as the parser]You can SHAKE butterfly milk to create butter.[as normal][only]".
Butterfly milk has a number called mood. The mood of butterfly milk is 6.

One milk is part of the butterfly.

Shaking is an action applying to one thing.
Understand "shake [something]" as shaking.
Carry out shaking: say "You shake it to the right. You shake it to the left. Nothing happens."

Instead of shaking a milk (called B):
say "You shake the butterfly milk vigorously. Butterfly butter!";
decrease player's energy by 5;
remove the B from play;
let C be a random butter that is in staging;
let the new butter be a new object cloned from C;
now the player carries the new butter.

["sniffing butterfly milk is advised for curing the blues"]

Instead of smelling a milk:
say "Butterfly milk smells like perfume from France. You experience a momentary surge of elation.";
increase player's mood by 12.

Chapter - Butterfly Butter

A butter is a kind of food. The printed name is "butterfly butter". Understand "butterfly butter" as butter.
The description is "Butterfly butter might seem like an odd thing, but it is used in many delicious cooking recipes.[first time][paragraph break][as the parser]You can COMPRESS butterfly butter into cheese.[as normal][only]"

Understand the command "compress" as "squeeze".

After squeezing a butter (called B):
say "You squeeze the butterfly butter with all your might and cheese appears!";
decrease the player's energy by 5;
remove the B from play;
let C be a random basic cheese that is in staging;
let the new basic cheese be a new object cloned from C;
now the player carries the new basic cheese.

Chapter - Cheese

A basic cheese is a kind of food. The printed name is "cheese". The description is "A nice wedge of holey cheese.[first time][paragraph break][as the parser]Cheese can be made from butterfly milk. Cheese can also be [link]AGED[as]AGE cheese[end link].[as normal][only]"

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
EZ Cooking ends when food-count is 3.

Food-count is a number that varies. Food-count is 0.

When EZ Cooking ends:
record "Completed EZ Cooking" as achieved;
if sound-allowed is 1, play sound of achievement in foreground;
say "[as the parser]You have gained the EZ Cooking skill![paragraph break]As you explore the world and gain imagination, you will discover new cooking tools and learn new recipes. Eat a variety of foods to gain energy and imagination.[as normal]".

Book - Requesting Recipes

Requesting recipes is an action applying to nothing.
Understand "RECIPES" and "RECIPE" as requesting recipes.

A utensil is a kind of thing.

A knifen board is a utensil. The description is "A good knife and cutting board. They can be used to make simple foods.[first time][paragraph break][as the parser]You can type RECIPES at any time to see what recipes you know.[as normal][only]"

Table of Recipes
Topic	Recipe	Known	Tool	Ingredients
"meaty sammich" or "meaty"	"Meaty Sammich"	1	Knifen Board	{"a bun", "a meat"}
"cheezy sammich" or "cheezy" or "cheesy" or "cheesy sammich"	"Cheezy Sammich"	1	Knifen Board	{"a bun", "a cheese"}
"lazy salad" or "lazy"	"Lazy Salad"	1	Knifen Board	{"a tomato", "a cheese"}

One lazy salad, one meaty sammich and one cheezy sammich are part of the knifen board.

Check requesting recipes:
if the player does not enclose a utensil, say "You are not carrying any cooking implements." instead.

Carry out requesting recipes:
	If the player encloses the Knifen Board:
		say "You know the following recipes for your Knifen Board:";
		repeat through the Table of Recipes:
			if the known entry is 1 and the tool entry is Knifen Board:
				say "[line break][recipe entry] ([ingredients entry])";
		say "[first time][paragraph break][as the parser]Now [link]PREPARE[as]PREPARE salad[end link] a lazy salad.[as normal][only][line break]".

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
	otherwise if recipe is a recipe listed in the Table of Recipes:
		say "[link]PREPARE [recipe][end link][line break]";
	exit.

[TODO: How can I make this work??]

Check preparing:
	if the topic understood is a topic listed in the Table of Recipes:
		if the known entry is 0, say "You don't know how to prepare that yet." instead;
		if the player does not enclose the tool entry, say "You need [a tool entry] to prepare that recipe." instead;
		repeat with ingredient running through the ingredients entry:
			let found be 0;
			repeat with object running through the list of things enclosed by the player:
				if "[a object]" matches the text "[ingredient]", now found is 1;
			if found is 0, say "You will need [ingredient] to make this recipe." instead;
	otherwise:
		say "You don't know how to prepare that (or you need to be more specific)." instead;

Check preparing nothing:
if the player does not enclose a utensil, say "You are not carrying any cooking implements." instead.
                 
Carry out preparing:
	if the topic understood is a topic listed in the Table of Recipes:
		say "Nice! You made a [recipe entry]. You used [ingredients entry].";
		repeat with ingredient running through the ingredients entry:
			let found be 0;
			repeat with object running through the list of things enclosed by the player:
				if "[a object]" matches the text "[ingredient]", remove object from play;
		repeat with recipe running through the list of things that are part of the knifen board:
			if "[recipe]" matches the text "[recipe entry]", case insensitively:
				let the new item be a new object cloned from the recipe;
				now the player carries the new item;
		If recipe entry matches the text "Lazy Salad":
			if the lazy salad has not been handled:
				say "[as the parser]Great! See what else you can PREPARE with the ingredients you have available.[as normal]";
				record "Prepared a lazy salad" as achieved;
				increase food-count by 1;
		otherwise if recipe entry matches the text "Cheezy Sammich":
			if the cheezy sammich has not been handled:
				record "Prepared a cheezy sammich" as achieved;
				increase food-count by 1;
		otherwise if recipe entry matches the text "Meaty Sammich":
			if the meaty sammich has not been handled:
				record "Prepared a meaty sammich" as achieved;
				increase food-count by 1.

Food ends here.