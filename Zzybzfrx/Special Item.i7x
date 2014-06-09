Special Item by Zzybzfrx begins here.

Use authorial modesty.

Volume - Special Item for Beta Testers

The Special Item That Only Beta Testers Get is a thing. The description is "Best selling toy in a year that the historians have glossed over, sales plummeted when it was discovered that many of the advertised functions of Señor Funpickle could cause injury, death, or severe unpopularity. Hastily rebranded, the remaining stock were quietly farmed out as commemorative free gifts."

Ignoring is an action applying to one thing.
Understand "ignore [special item that only beta testers get]" as ignoring.
Carry out ignoring: say "If you don't pay any attention to the item, maybe it will go away."

Begrudging is an action applying to one thing.
Understand "begrudge [special item that only beta testers get]" as begrudging.
Carry out begrudging: say "You nurse a secret contempt for the item."
Understand the command "resent" as "begrudge".

[Contemplate: Consider the weighty significance of the item]

[Infer: Deduce secret truths of the universe from brute facts about the item]

[Procrastinate: Never mind. You can do stuff to the item later]

[Envy: Somehow the item has more friends than you. Give in to your jealousy]

[Forget: Can you ever really forget the item?]

[Regard: Take in the full majesty of the item]

Respecting is an action applying to one thing.
Understand "respect [special item that only beta testers get]" as respecting.
Carry out respecting: say "You treat the item with the respect and deference it deserves."

Admiring is an action applying to one thing.
Understand "admire [special item that only beta testers get]" as admiring.
Carry out admiring: say "You admire the many aesthetically pleasing qualities of the item."

Enjoying is an action applying to one thing.
Understand "enjoy [special item that only beta testers get]" as enjoying.
Carry out enjoying: say "You experience the pure and honest enjoyment the item brings you."

Beta_Use_Count is a number that varies. Beta_use_count is 0.

[TODO: These things happen randomly when one of the above actions is chosen.]

Using is an action applying to one thing.

["Comedian" buff: add factoids and jokes]
[Sneezing fit: sneezing beans for a minute--there's code for this somewhere.]

Carry out using the special item that only beta testers get:
	if beta_use_count is:
		-- 2:
		say "[bold type][spam][roman type][paragraph break]All your friends have received some very special mail from you.";
		-- 0:
		say "[The special item that only beta testers get] lets out a loud shriek. Put it away, will you?!? You'll startle the chickens.";
		-- 1:
		say "There's something amiss with the particle accelerating teletransponder... Oh boy...";
		move player to a random street;
		-- 3:
		say "They say that a fool and their money are soon parted. If by 'a fool', they mean 'you', and by 'money', they mean [random thing carried by the player], then yes, they're right.";
		now every thing carried by the player is in the location; [TODO: only five things]
		-- 4:
		say "You've experienced every shade of fun The Special Item Only Beta Testers Get has in its arsenal. As an apology, genericgeekgirl has sent you this this Special Other Item I Have Not Defined Yet.";
		-- otherwise:
		say "[The special item that only beta testers get] wriggles out of your arms and falls to the ground.";
		move the special item that only beta testers get to the location;
	increase beta_use_count by 1.

To say spam:"[one of]$$$ CHEAP RX AVAILABLE NOW $$$[line break][line break]MAIL ORDER PURPLE FLOWERS, HAIRBALL FLOWERS, NO-NO POWDER [line break][line break]FULLY LEGAL* PRESCRIPTIONS** FROM REAL DOCTORS***[line break][line break]TROUBLE PLEASURING YOUR GLITCH GIRLFRIEND/BOYFRIEND/FRIEND-OF-VARIABLE-OR-UNDISCLOSED-OR-UNDEFINED-GENDER? WORRY NO LONGER WITH ALL NATURAL RUBEWEED ENHANCEMENTS.[line break][line break]$$$ CHEAP AND LEGAL* $$$[line break]CALL NOW[line break][line break]* May not be as legal as advertised.[line break]** Prescriptions may be scrawled on bar napkins in crayon.[line break]*** May not be a doctor. Possibly just a piggy we refer to as Doctor Piggles who signs prescriptions (see above) with his foot and actually truth be told it is pretty adorable.[or]Dear $recipient,[line break][line break]I am crown prince of Shimla Mirch who has run up against the serious problem of finances.[line break][line break]While my family possesses many wealths, all of these are tied up in the peat trade, which has been experiencing the turbulences. Unfortunately, without immediate access to liquid assets in the form of 50,000 (fifty thousand) currants, we are unable to secure our asset against decline in peat and face insolvency.[line break][line break]I hope to enter into the business arrangement with you, the pillar of communities, against this event. If you can make the arrangement to mail 50,000 (fifty thousand) currants to me directly, I will be enabled to access my vast fortunes and you will be well rewards by the sum of 100,000,000 (one-hundred million) currants in return.[line break][line break]I hope most sincerely that you will consider this offer to help me, my family and my region.[line break][line break]Yours truly,[line break]Crown Prince $sender of Shimla Mirch[or]Dear $recipient,[line break][line break]Now is an excellent time to enter the real estate market! Real estate is doing better than ever, with market values improving across the board on homes everywhere from Groddle Forest to Alakol and beyond. Our financial models, developed by a fully-qualified economics undergraduate only minutes before the deadline, indicate that houses will never cease increasing in value.[line break][line break]That's infinite value![line break][line break]Buy a house now, and the equity in your home will pay for itself. No income, assets or job required! You don't need to have any money; you don't even need to know what money is or looks like![line break][line break]Contact one of our real estate agents today to get in on the ground floor on this amazing offer.[line break][line break]Sincerely,[line break]$sender, Realtor.[line break][line break] DISCLAIMER: OFFER DOES NOT CONSTITUTE LEGALLY BINDING CONTRACT. BENEFITS OF OFFER NOT GUARANTEED TO BE FACTUAL OR EVEN POSSIBLE. THE AGENCY PROVIDING THIS SPECIAL OFFER ACCEPTS NO RESPONSIBILITY FOR ANY DAMAGE IT MAY CAUSE, INCLUDING BUT NOT LIMITED TO THE FOLLOWING: PERSONAL INSOLVENCY, LOSS IN STANDARDS OF LIVING, LOSS OF HOME, JOB OR LIFE, POLITICAL INSTABILITY, MARKET COLLAPSE, DESTRUCTION OF THE ECONOMY, PLAGUE AND/OR FAMINE, NUCLEAR PROLIFERATION AND THE END OF LIFE AS WE KNOW IT.[at random]"

Instead of taking the special item that only beta testers get:
say "It is moving around too much to pick up."

Special Item ends here.