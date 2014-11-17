Tutorial Mode by Helga begins here.

"Modified from Tutorial Mode, Version 2, by Emily Short, for use specifically with Discover a World."

Tutorial mode is a truth state that varies. [Tutorial mode is true.] Tutorial mode is true.

Section - Forcing player response

The expected command is indexed text that varies. 
The held rule is a rule that varies. 
The completed instruction list is a list of rules that varies.

Understand "restore" or "quit" or "save" or "restart" or "version" as "[meta]".
Understand "imagination" or "img" or "about" or "info" or "credits" or "help" or "hint" or "hints" or "menu" or "walkthrough" as "[meta]".
Understand "transcript" or "panels" or "sound" as "[meta]".

After reading a command when tutorial mode is true (this is the require correct response rule):	
	if the player's command includes "[meta]", make no decision;
	if the player's command includes "study":
		say "That command is not available right now.";
		reject the player's command;
	if the player's command includes "x", replace the matched text with "examine";
	if the player's command includes "i", replace the matched text with "inventory";
	if the expected command is "", make no decision;
	let the translated command be indexed text;
	let the translated command be "[the player's command in lower case]";
	replace the text "the " in the expected command with "";
	replace the text "the " in the translated command with "";
	if the translated command matches the text "[expected command]":
		now the expected command is "";
		if the held rule is a selector listed in the Table of Instruction Followups:
			choose row with a selector of the held rule in the Table of Instruction Followups;
			say "[as the parser][followup entry][as normal][paragraph break]";
		add the held rule to the completed instruction list;
		now the held rule is the little-used do nothing rule;
	otherwise:
		say "[as the parser][one of]Nope[or]No[or]Sorry[or]Whoops[at random][one of], that's not it[or][or] -- try again[at random].[as normal]";
		reject the player's command;

Section - Instructional Rules

Before reading a command when tutorial mode is true (this is the offer new prompt rule):
	follow the instructional rules.

Definition: a thing is non-player if it is not the player. 

A thing can be previously-mentioned. A thing is usually not previously-mentioned.

Before printing the name of something (called the target):
	now the target is previously-mentioned.
	
The instructional rules are a rulebook.

An instructional rule (this is the first we imagine rule):
	if the first we imagine rule is listed in the completed instruction list, make no decision;
	now the expected command is "imagine";
	say "[as the parser][one of]The [bold type]>[as the parser] prompt below is my way of asking you what you want to do next. You may respond by typing an instruction, usually an imperative verb. Try it out by typing IMAGINE now.[or]Please type IMAGINE to begin.[stopping][as normal]";
	now the held rule is the first we imagine rule;
	rule succeeds;
                                        
An instructional rule (this is the examine player rule):
	if examine player rule is listed in the completed instruction list, make no decision;
	if the first we imagine rule is listed in the completed instruction list:
		now the expected command is "examine me";
		say "[as the parser][one of]Now try examining yourself to get a better idea of who you are.[or][or]Hint: '[the expected command in upper case]'.[stopping][as normal]";
		now the held rule is the examine player rule;
		rule succeeds;
	otherwise:
		make no decision.

An instructional rule (this is the teach examining rule):
	if the teach examining rule is listed in the completed instruction list, make no decision;
	if the player can see a non-player thing (called target):
		let N be indexed text;
		let N be "[target]";
		now the expected command is "examine [N]";
		say "[as the parser][one of]Individual objects have descriptions, too. Don't forget to examine each new item you come across.[or]Examine the bag.[or]Hint: '[the expected command in upper case]'.[stopping][as normal]";
		now the held rule is the teach examining rule;
		rule succeeds;
	otherwise:
		make no decision.

An instructional rule (this is the teach taking rule):
	if the teach taking rule is listed in the completed instruction list, make no decision;
	if the player can see a portable previously-mentioned non-player thing (called target item):
		let N be indexed text;
		let N be "[the target item]";
		now the expected command is "take [N]";
		say "[as the parser][one of]Some items can be picked up. Try taking [N].[or]Take the bag.[or]Hint: '[the expected command in upper case]'.[stopping][as normal]";
		now the held rule is the teach taking rule;
		rule succeeds;
	otherwise:
		make no decision.

An instructional rule (this is the teach inventory rule): 
	if the teach inventory rule is listed in the completed instruction list, make no decision;
	if the player carries nothing, make no decision;
	if side-window is not g-present:
		now the expected command is "inventory";
		say "[as the parser][one of]To see the list of items you are carrying, type INVENTORY.[or][or]Please type INVENTORY to continue.[stopping][as normal]";
		now the held rule is the teach inventory rule;
		rule succeeds;
	otherwise:
		say "[first time][as the parser]The list of items you are carrying can be seen on the right.[as normal][only]"

An instructional rule (this is the teach looking rule): 
	if the teach looking rule is listed in the completed instruction list, make no decision;
	if a room is adjacent:
		now the expected command is "look";
		say "[as the parser][one of]Sometimes getting a new look around your surroundings can help you figure out what you need to do next. Notice where the exits are and what objects are described.[or]Take a look around.[or]Please type LOOK to continue.[stopping][as normal]";
		now the held rule is the teach looking rule;
		rule succeeds.
                
Table of Instruction Followups
selector	followup
teach examining rule	"Since you will be examining things frequently, you can abbreviate this command as X, as in X [random visible non-player thing].[as normal]"
teach taking rule	"If you want to get rid of something that you're holding, you can drop it."
teach inventory rule	"In the future, you can shorten this command to INV or I."
teach looking rule	"[navigation][line break]Why don't you try going to [link]Nylon Phool[end link]?"

Tutorial Mode ends here.
