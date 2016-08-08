Actions by Helga begins here.

Use authorial modesty.

[Include Object Kinds by Brady Garvin.]

Volume - Listing Actions

Requesting actions for is an action applying to one thing.
Understand "study [something]" as requesting actions for.

Before requesting actions for the knifen board:
say "You can type RECIPES at any time to see what recipes you know."

Carry out requesting actions for something (called item):
	let L be a list of texts;
	if item is edible:
		add "EAT" to L;
	if item is a drink:
		add "DRINK" to L;
	if item is a tree:
		add "PET" to L;
		add "WATER" to L;
		add "HARVEST" to L;
	if the action-lookup text of item is an object listed in the Table of Possible Actions:
		add actions entry to L;
	if item is enclosed by the player:
		add "DROP" to L;
	otherwise if item is touchable and item is not a person and the item is not fixed in place:
		add "TAKE" to L;
	if L is not empty:
		let count be the number of entries in L;
		say "You can ";
		repeat with x running through L:
			say "[x]";
			decrease count by 1;
			if count > 1:
				say ", ";
			otherwise if count is 1:
				say " or ";
		say " [the item]."		

Table of Possible Actions
Object	Actions
"piggy"	{"PET", "NIBBLE", "FEED"}
"butterfly"	{"MASSAGE", "MILK", "SING TO"}
"chicken"	{"SQUEEZE"}
"bunch of hellish grapes"	{"SQUISH"}
"basic cheese"	{"AGE"}
"butter"	{"SQUEEZE"}
"general vapour"	{"SHAKE"}
"lotion"	{"DRINK"}
"milk"	{"SHAKE"}
"plop"	{"SEARCH"}
"stinky cheese 1"	{"AGE", "TASTE", "SMELL"}
"stinky cheese 2"	{"AGE", "POKE", "SMELL"}
"stinky cheese 3"	{"SMELL", "TOUCH"}

A thing has some text called action-lookup text.

The action-lookup text of a piggy is usually "piggy".
The action-lookup text of a butterfly is usually "butterfly".
The action-lookup text of a chicken is usually "chicken".
The action-lookup text of a bunch of hellish grapes is usually "bunch of hellish grapes".
The action-lookup text of a basic cheese is usually "basic cheese".
The action-lookup text of a butter is usually "butter".
The action-lookup text of a general vapour is usually "general vapour".
The action-lookup text of a lotion is usually "lotion".
The action-lookup text of a milk is usually "milk".
The action-lookup text of a plop is usually "plop".
The action-lookup text of a stinky cheese 1 is usually "stinky cheese 1".
The action-lookup text of a stinky cheese 2 is usually "stinky cheese 2".
The action-lookup text of a stinky cheese 3 is usually "stinky cheese 3".

[

Volume - Hyperlinks

Making it easy is an action applying to one thing.
Understand "> [something]" as making it easy.

Carry out making it easy:
try examining the noun;
try requesting actions for the noun.

Volume - Hyperlinked Objects

Rule for printing the name of a thing (called item) while looking or taking inventory or taking sidebar inventory:
	let string be the printed name of item;
	if item is scenery:
		say "[string]";
	otherwise if item is not visible:
		say "[string]";
	otherwise:
		say "[link][string][as]> [string][end link]".

Rule for printing the plural name of a thing (called item) while looking or taking inventory or taking sidebar inventory:
	let string be the printed name of item;
	let stringp be the printed plural name of item;
	if item is scenery:
		say "[stringp]";
	otherwise if item is not visible:
		say "[stringp]";
	otherwise:
		say "[link][stringp][as]> [string][end link]".
]

Actions ends here.
