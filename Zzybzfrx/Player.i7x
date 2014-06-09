Player by Zzybzfrx begins here.

Use authorial modesty.

Include Questions by Michael Callaghan.

Volume - Inventory

Instead of taking inventory: 
	now all things carried by the player are marked for listing; 
	now all things worn by the player are unmarked for listing;
	now all bags worn by the player are marked for listing;
	if no things carried by the player are marked for listing:
		say "nothing"; 
	otherwise:
		list the contents of the player, with newlines, indented, giving inventory information, including contents, with extra indentation, listing marked items only.

Volume - Character Generation

The carrying capacity of the player is 5.

Currants is a number that varies. Currants is 0.
Player's energy is a number that varies. Player's energy is 100.
Player's mood is a number that varies. Player's mood is 100.

Mood_rate is a number that varies. Mood_rate is 30.
Energy_rate is a number that varies. Energy_Rate is 30.

Every turn:
if the remainder after dividing turn count by mood_rate is 0, decrease player's mood by 1;
if the remainder after dividing turn count by energy_rate is 0, decrease player's energy by 1.

To say stats: say "C [currants] / iMG [score] / [if player's mood is less than 50]:([otherwise if player's mood is greater than 80]:)[otherwise]:|[end if] / nRG [player's energy]";

Book - Player's Avatar

Data is a kind of value. The data are get-name, confirm-nickname, confirm-name, complete.
Stage is data that varies.

Setup is a scene. Setup begins when play begins. Setup ends when stage is complete.

Chapter - Player's Name

The player's name is indexed text that varies. The player's name is "Alexandra".

Every turn when setup is happening (this is the create new player rule):
	if stage is get-name:
		now current question is "What should we call you?";
		ask an open question, in text mode;
	if stage is confirm-name or stage is confirm-nickname:
		now current question is "";
		ask a closed question, in yes/no mode.
                
A text question rule (this is the gather name rule):
	if setup is happening and stage is get-name:
		if the number of words in the current answer is greater than 2:
			now the player's name is word number 1 in the current answer in title case;
			say "Do you mind if I call you [player's name] for short?";
			now stage is confirm-nickname;
			exit;
		otherwise if the number of words in the player's command is 0:
			say "[line break]You must have a name. Since you didn't choose one, I am going to call you [player's name]. Isn't that a lovely name?";
			now stage is confirm-name;
			exit;
		otherwise:
			now the player's name is the current answer in title case;
			say "That is a wonderful name. '[player's name]'. It rolls easily off the tongue.[line break]";
			now stage is complete;
			try looking;
			exit.                        

A yes/no question rule (this is the confirm nickname rule):
	if setup is happening and stage is confirm-nickname:
		if the decision understood is No:
			say "No, of course you don't. We're going to be really great friends, [player's name].[line break]";
			now stage is complete;
			try looking;
			exit;
		otherwise:
			say "Aww. I thought it was cute. Let's try that again.[line break]";
			now stage is get-name;
			exit.
                 
A yes/no question rule (this is the confirm name rule):
	if setup is happening and stage is confirm-name:
		if the decision understood is Yes:
			say "That makes me very happy![line break]";
			now stage is complete;
			try looking;
			exit;
		otherwise:
			say "Aww. But it's the name of our Creator! Let's try that again.[line break]";
			now stage is get-name;
			exit.

Rule for constructing the status line when stage is not complete: do nothing.
Instead of looking when stage is not complete: do nothing.

Chapter - Player's Appearance

To say get-description: say "[paragraph break]Now I'd like to ask a few questions about what you look like."

[say "Great! You can type EXAMINE ME at any time to view your description.";]

A body part is a kind of thing. A body part is wearable.

Check taking off a body part when the location is not in Outside Ur (this is the customize only at home rule):
say "If you want to change your appearance, please type CUSTOMIZE." instead.

Eye is worn by player. Understand "eyes" as eye. The printed name is "[eye_num in words] eye[if eye_num is greater than 1]s[end if]".

A nose is a kind of body part.
An ear is a kind of body part.
A tail is a kind of body part.
A mouth is a kind of body part.
A skin-cover is a kind of body part. 
A fun-item is a kind of body part.

The player has a text called color. The player has a text called eye-color.
[The list of eye colors is {"red", "orange", "yellow", "green", "blue", "purple", "pink", "white", "black"}.]

Rule for printing room description details of a body bag: omit contents in listing.

A body bag is a kind of container. A body bag is fixed in place.

A beeker of eyes is a thing. It is fixed in place. The beeker of eyes is in PlayerStart.
The printed name is "beaker of eyes". Understand "beaker" as beeker of eyes.

Does the player mean examining the beeker of eyes: it is likely.

Adding an eye is an action applying to nothing.
Understand "take eyes" and "wear eyes" as adding an eye.
Understand "take eye" and "wear eye" as adding an eye.

Eye_num is a number that varies. Eye_num is 2.

Carry out adding an eye:
increase eye_num by 1;
say "You take an eye from the beeker and affix it to your face.";
if eye_num is 8, say "I'm not sure how you found room for that one, but carry on."

Removing an eye is an action applying to nothing.
Understand "drop eye" and "remove eye" as removing an eye.

Carry out removing an eye:
	if eye_num is 1:
		say "You need to have at least one eye.";
	otherwise:
		decrease eye_num by 1;
		say "You pry out an eye and drop it back into the beaker."

A bowl of noses is a body bag in PlayerStart.
A beak, a snout, a clown nose, a jingle bell, a triangular nose and a button nose are noses in the bowl of noses.
A humanoid nose is a nose worn by the player.
Understand "nose" as beak. Understand "nose" as snout.

A baggy of tails is a body bag in PlayerStart.
A cotton tail, a long spiked tail, a long slender tail, a corkscrew tail and a demon tail are tails in the baggy of tails.
The printed name of cotton tail is "cottontail".

Does the player mean examining the basket of ears: it is likely.

A basket of ears is a body bag in PlayerStart.
Large round ears, ears like a rabbit, small round ears, large floppy ears, small pointed ears are ears in the basket of ears.
The printed name of large round ears is "large round ears". [It's printing with a capital L. Ugh.]
Understand "ear" as an ears. The indefinite article of an ears is "a set of".
A humanoid ears is an ear worn by the player.

A bucket of extras is a body bag in PlayerStart.
A unicorn horn, mane, whiskers, a pair of antenna, a pair of antlers and a pair of horns are fun-items in the bucket of extras.
The indefinite article of unicorn horn is "a".

A closet of coverings is a body bag in PlayerStart.
A fur, a feathers, a scales and a wool are skin-covers in the closet of coverings.

The printed name of the fur is "fur[if the fur is not worn by the player] coat[end if]".
The printed name of the feathers is "feathered[if the feathers is not worn by the player] cloak[end if]".
The printed name of the scales is "[if the scales is not worn by the player]suit of [end if]scales".
The printed name of the wool is "wool[if the wool is not worn by the player] sweater[end if]".

[TODO: descriptions, printed names]

After taking off an ear (called E):
move E to the basket of ears;
say "You pull off [the E] and drop them back into the basket."

After taking off a tail (called T):
move T to the baggy of tails;
say "You yank off [the T] and drop it back into the baggy.";
stop the action.

After taking off a nose (called N):
move N to the bowl of noses;
say "You rip off [the N] and drop it back into the bowl."

After taking off a fun-item (called X):
move X to the bucket of extras;
say "You take off [the X] and drop [if X is plural-named]them[otherwise]it[end if] back into the bucket."

After taking off a skin-cover (called SC):
move SC to the closet of coverings;
say "You take off the [SC] and put it back on the hanger."

Instead of dropping a body part (called BP):
try taking off the BP.

Procedural rule while wearing something:
ignore the carrying requirements rule;
ignore the can't wear what's not held rule.

Instead of taking a body part (called BP):
	try wearing BP.

After wearing a body part (called BP):
	say "You now have [a BP]."
        
After wearing a skin-cover (called SC):
	say "You pull on a suit of [SC]."

Check wearing a body part (called BP):
if BP is worn by the player, say "That is already a part of you!" instead.
                
Carry out wearing an ear when an ear (called the old ear) is worn by the player:
	try taking off the old ear.

Carry out wearing an tail when a tail (called the old tail) is worn by the player:
	try taking off the old tail.

Carry out wearing an nose when a nose (called the old nose) is worn by the player:
	try taking off the old nose.

Carry out wearing an skin-cover when a skin-cover (called the old skin-cover) is worn by the player:
	try taking off the old skin-cover.

The description of the player is "Your name is [player's name]. You are a Tulpan, the first of a race imagined by the Eleven Giants of Ur."

[ You are covered in [color of skin] [style of skin]. You have [style of ears][if another item is part of the player], [style of another item][end if][if a tail is part of the player], [style of tail][end if][if nose is whiskered], whiskers[end if], [style of nose], and [style of eyes] [color of eyes] eyes." ]

After examining the player: say "You have [a list of things worn by the player].";
			
[TODO: change apperance at any time; maybe you get various benefits based on styles; corkscrew tail makes pigs like you, etc]
[TODO: character customization; crib code from pbp to display what you are wearing vs carrying]
[TODO: a mirror or costume box or warddrobe that you can examine to change description; name will not be reset]
[TODO: maybe color of skin and eyes are input]

Book - Wardrobe

[TODO: cardboard box, barrel, etc? are wearable items]

Clothing is a kind of thing. A clothing is wearable.

Player ends here.
