Fingertips by Adri begins here.

Use authorial modesty.

"This extension facilitates in the creation of a Fingertips-style single move game."

Chapter - Basic Setup

Use no scoring.
Use American dialect, full-length room descriptions, and the serial comma.

Section - Extensions

Include Basic Screen Effects by Emily Short.
Include Status Line Removal by Emily Short.
Include Conditional Undo by Jesse McGrew.	

Section - Blocking UNDO, SAVE, RESTORE

Rule for deciding whether to allow undo:
        if the turn count is greater than 0 and the story has not ended finally
        begin;
            say "There is no need to do that.";
            deny undo;
        end if.

Check saving the game: say "There is no need to do that." instead.
Check restoring the game: say "There is no need to do that." instead.

Section - Credits, Help

Understand "credits" as asking for credits.
Understand "about" as asking for credits.
Asking for credits is an action out of world.

Understand "help" or "hint" or "hints" as asking for help. 
Asking for help is an action out of world. 
Carry out asking for help: say "What's the name of the game?"

Section - Transcripting

Understand "* [text]" as a mistake ("Noted.").

Section - Fast Quitting

Fast quitting is an action out of world.
Understand "quitr" as fast quitting.
Carry out fast quitting: follow the immediately quit rule.
		
Section - Table of Final Question Options
		
When play begins:
        choose row with a final response rule of immediately restore saved game rule in the Table of Final Question Options; 
        delete the final question wording entry;
        choose row with a final response rule of immediately quit rule in the Table of Final Question Options; 
        delete the final question wording entry.

Table of Final Question Options (continued) 
final question wording   	only if victorious   	topic   	final response rule   	final response activity   
"view available ENDINGS"   	true   	"endings"   	--	displaying endings
"QUIT"   	false   	"quit"   	immediately quit rule   	--   

Displaying endings is an activity.

Chapter - Common Commands

Section - Blocking Carrying Requirement

A procedural rule when wearing:
ignore the carrying requirements rule;
ignore the can't wear what's not held rule.

A procedural rule when showing:
ignore the carrying requirements rule;
ignore the can't wear what's not held rule.

A procedural rule when giving:
ignore the carrying requirements rule;
ignore can't give what you haven't got rule.

Section - Magic Words

Casting xyzzy is an action applying to nothing.
Understand "xyzzy" or "say xyzzy" as casting xyzzy.
Understand "plugh" or "say plugh" as casting xyzzy.
Understand "plover" or "say plover" as casting xyzzy.

Section - Naughtiness

Copulating is an action applying to one thing.
Understand "fuck [something]" as copulating.
Understand the command "screw" as something new.
Understand "screw [something]" as copulating.
Report copulating: say "This isn't that sort of game.".

Section - Movement

Understand "walk away" or "walk out" as exiting.

Instead of going: try exiting.

Crawling under is an action applying to one thing.
Understand "crawl under [something]" as crawling under.
Report crawling under: say "You can't crawl under [the noun].".

Section - Other Commands

The carrying capacity of the player is 0.

Instead of showing something to the player: try examining the noun.

Pointing is an action applying to one thing.
Understand "point at [something]" as pointing.

Undressing is an action applying to nothing.
Understand "undress" as undressing.

Carry out undressing:
try dropping a random thing worn by the player.

Check dropping something (this is the also no nudity rule):
        if the noun is worn by the player, try taking off the noun instead.

Understand the command "hug" as something new.
Hugging is an action applying to one thing.
Understand "hug [someone]" as hugging.

Counting is an action applying to one thing.
Understand "count [something]" as counting.
Report counting: say "There's just the one."

Understand "bite [something]" as eating.
Understand "chew [something]" and "chew on [something]" as eating.

Dancing is an action applying to nothing.
Understand "dance" and "do a little dance" as dancing.

Poking is an action applying to one thing.
Understand "poke [something]" or "jab [something]" as poking.
Report poking something: say "Keep your hands to yourself."

Section - Vocalizations

Understand "curse" or "swear" as swearing mildly.

Instead of swearing mildly: try swearing obscenely.

Understand "hum" as singing.

Crying is an action applying to nothing.
Understand "cry" as crying.

Understand the command "shout" as something new.
Shouting is an action applying to nothing.
Understand "shout" as shouting.
Understand "yell" and "scream" and "screech" as shouting.
Report shouting: say "It's not nice to yell!"

Shouting at is an action applying to one thing.
Understand "shout at [something]" as shouting at.
Understand "yell at [something]" and "scream at [something]" and "screech at [something]" as shouting at.
Report shouting at: say "It's not nice to yell!"

Section - Conversation (Blocking)

talking is an action applying to nothing.
understand "talk" or "speak" as talking.

talking to is an action applying to one thing.
understand "talk to [something]" as talking to.
understand "speak to [something]" as talking to.
understand "talk to [someone]" as talking to.
understand "speak to [someone]" as talking to.

report talking to something: say "It doesn't respond."

Understand the command "tell" as something new.
Understand the command "ask" as something new.
Understand the command "say" as something new.
Understand "say" or "tell" or "ask" as talking.

Talking about is an action applying to one topic.
Understand "say [text]" or "mention [text]" or "ask about [text]" or "tell about [text]" or "talk about [text]" as talking about.

Talking about to is an action applying to one topic and one thing.
Understand "say [text] to [someone]" or "mention [text] to [someone]" or "talk about [text] to [someone]" as talking about to.

Talking to about is an action applying to one thing and one topic.
Understand "ask [someone] about [text]" or "tell [someone] about [text]" or "talk to [someone] about [text]" as talking to about.

Understand "ask [someone] for [text]" as talking to about.

Instead of talking about: try talking.
Instead of talking about to: try talking.
Instead of talking to about: try talking.
Instead of talking to someone: try talking.

Fingertips ends here.
