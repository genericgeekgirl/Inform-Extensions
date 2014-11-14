Actions by Helga begins here.

Use authorial modesty.

Volume - Listing Actions

Requesting actions for is an action applying to one thing.
Understand "study [something]" as requesting actions for.

Carry out requesting actions for something (called item):
	try examining the item;
	let L be a list of texts;
	if item is a food:
		add "EAT" to L;
	otherwise if item is a drink:
		add "DRINK" to L;
	if item is an item listed in the Table of Possible Actions:
		add actions entry to L;
	if item is enclosed by the player:
		add "DROP" to L;
	otherwise if item is touchable and item is not a person and the item is not fixed in place:
		add "TAKE" to L;
	if L is not empty:
		let count be the number of entries in L;
		say "You can ";
		repeat with x running through L:
			say "[link][x][as][x] [item][end link]";
			decrease count by 1;
			if count > 1:
				say ", ";
			otherwise if count is 1:
				say " or ";
		say " [the item]."
                
Table of Possible Actions
Item	Actions
piggy	{"PET", "NIBBLE", "FEED"}
butterfly	{"MASSAGE", "MILK", "SING TO"}
chicken	{"SQUEEZE"}

[TODO: knifen board, lotion, plop]

Volume - Hyperlinked Objects

Rule for printing the name of a thing (called item) while looking or taking inventory:
	let string be the printed name of item;
	if item is scenery:
		say "[string]";
	otherwise if item is not visible:
		say "[string]";
	otherwise:
		say "[link][string][as]study [string][end link]".

Rule for printing the plural name of a thing (called item) while looking or taking inventory:
	let string be the printed name of item;
	let stringp be the printed plural name of item;
	if item is scenery:
		say "[stringp]";
	otherwise if item is not visible:
		say "[stringp]";
	otherwise:
		say "[link][stringp][as]study [string][end link]".
                
Actions ends here.
