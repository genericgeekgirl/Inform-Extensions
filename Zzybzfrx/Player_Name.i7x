hen play begins:
say "Greetings! We'd better start by giving you a name.";
now the closed yes/no prompt is "Yes? >";
now the closed menu prompt is "# >";
now stage is get-name;
follow the create new player rule.

Volume - Player Character

Include Questions by Michael Callaghan.

Section - Player's Name

Data is a kind of value. The data are get-name, confirm-nickname, confirm-name, complete.
Stage is data that varies. Stage is complete.

Setup is a scene. [Setup begins when play begins. Setup ends when stage is complete.]

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

